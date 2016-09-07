ActiveRecord::Schema.define(version: 20160903204801) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.string   "upc"
    t.integer  "category_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.float    "discount"
    t.text     "locked_by_size"
    t.index ["category_id"], name: "index_products_on_category_id"
  end
end
