# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150129181906) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients_recipes", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "ingredient_id"
  end

  add_index "ingredients_recipes", ["ingredient_id"], name: "index_ingredients_recipes_on_ingredient_id", using: :btree
  add_index "ingredients_recipes", ["recipe_id"], name: "index_ingredients_recipes_on_recipe_id", using: :btree

  create_table "recipes", force: :cascade do |t|
    t.string   "title"
    t.string   "instructions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end