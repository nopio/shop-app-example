class ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :update, :destroy, :lock]


  def index
    if params[:search]
      @products = Product.search(params[:search]).order("name DESC")
    else
      @products = Product.all.order('name DESC')
    end
    ids = params[:ids]
  end

  def show
    @product = Product.find(params[:id])
    # Rails.logger.debug "My debug log"
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render :new
    end
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: 'Product was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_url, notice: 'Product was successfully destroyed.'
  end

  def lock
    @products = Product.all.order('updated_at DESC')
    locked_sizes_hash  = params[:sizes].map { |k, v| [k.to_sym, v == 'true'] }.to_h
    @product.update(locked_by_size: locked_sizes_hash)
    respond_to do |format|
      format.js
    end
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :description, :price, :upc, :category_id, :locked_by_size)
    end
end
