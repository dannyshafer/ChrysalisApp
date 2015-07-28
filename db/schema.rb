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

ActiveRecord::Schema.define(version: 20150728225416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "baskets", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funds", force: :cascade do |t|
    t.string   "morningstar_rating"
    t.string   "name"
    t.string   "symbol"
    t.string   "category"
    t.string   "description"
    t.string   "price"
    t.string   "expense_ratio"
    t.string   "div_yield"
    t.string   "ytd_return"
    t.string   "five_yr_return"
    t.string   "total_assets"
    t.string   "rank_in_category"
    t.string   "percent_rank_in_category"
    t.string   "morningstar_risk_rating"
    t.string   "num_yrs_up"
    t.string   "num_yrs_down"
    t.string   "best_one_yr_return"
    t.string   "worst_one_yr_return"
    t.string   "three_yr_alpha"
    t.string   "three_yr_alpha_cat"
    t.string   "three_yr_beta"
    t.string   "three_yr_beta_cat"
    t.string   "three_yr_mean_annual_return"
    t.string   "three_yr_mean_annual_return_cat"
    t.string   "three_yr_r_squared"
    t.string   "three_yr_r_squared_cat"
    t.string   "three_yr_std_deviation"
    t.string   "three_yr_std_deviation_cat"
    t.string   "three_yr_sharpe_ratio"
    t.string   "three_yr_sharpe_ratio_cat"
    t.string   "three_yr_treynor_ratio"
    t.string   "three_yr_treynor_ratio_cat"
    t.string   "five_yr_alpha"
    t.string   "five_yr_alpha_cat"
    t.string   "five_yr_beta"
    t.string   "five_yr_beta_cat"
    t.string   "five_yr_mean_annual_return"
    t.string   "five_yr_mean_annual_return_cat"
    t.string   "five_yr_r_squared"
    t.string   "five_yr_r_squared_cat"
    t.string   "five_yr_std_deviation"
    t.string   "five_yr_std_deviation_cat"
    t.string   "five_yr_sharpe_ratio"
    t.string   "five_yr_sharpe_ratio_cat"
    t.string   "five_yr_treynor_ratio"
    t.string   "five_yr_treynor_ratio_cat"
    t.string   "ten_yr_alpha"
    t.string   "ten_yr_alpha_cat"
    t.string   "ten_yr_beta"
    t.string   "ten_yr_beta_cat"
    t.string   "ten_yr_mean_annual_return"
    t.string   "ten_yr_mean_annual_return_cat"
    t.string   "ten_yr_r_squared"
    t.string   "ten_yr_r_squared_cat"
    t.string   "ten_yr_std_deviation"
    t.string   "ten_yr_std_deviation_cat"
    t.string   "ten_yr_sharpe_ratio"
    t.string   "ten_yr_sharpe_ratio_cat"
    t.string   "ten_yr_treynor_ratio"
    t.string   "ten_yr_treynor_ratio_cat"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "funds_baskets", force: :cascade do |t|
    t.integer  "fund_id"
    t.integer  "basket_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
