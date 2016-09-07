require 'byebug'
class ProductsController < ApplicationController
  before_action :set_product, only: [:lock]

  def index
    if params[:search]
      @products = Product.search(params[:search]).includes(:category).order(:name)
    else
      @products = Product.all.includes(:category).order(:name)
    end
  end

  def lock
    @products = Product.all.includes(:category).order('updated_at DESC')
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
end
