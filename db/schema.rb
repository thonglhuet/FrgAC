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

ActiveRecord::Schema.define(version: 20170710091959) do

  create_table "admins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "allowances", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "key"
    t.string "value"
    t.integer "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "month_years", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "value"
    t.integer "maxWorkingDay"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "over_times", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.float "value", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "type"
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salaries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "month_year_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["month_year_id"], name: "index_salaries_on_month_year_id"
    t.index ["user_id"], name: "index_salaries_on_user_id"
  end

  create_table "salary_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.float "value", limit: 24
    t.boolean "custom"
    t.bigint "salaries_id"
    t.bigint "salary_modules_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["salaries_id"], name: "index_salary_items_on_salaries_id"
    t.index ["salary_modules_id"], name: "index_salary_items_on_salary_modules_id"
  end

  create_table "salary_modules", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "excel_formular"
    t.string "key"
    t.string "type"
    t.string "value"
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salary_settings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.bigint "month_year_id"
    t.bigint "contract_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_salary_settings_on_contract_id"
    t.index ["month_year_id"], name: "index_salary_settings_on_month_year_id"
  end

  create_table "user_allowances", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.bigint "allowance_id"
    t.bigint "month_years_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allowance_id"], name: "index_user_allowances_on_allowance_id"
    t.index ["month_years_id"], name: "index_user_allowances_on_month_years_id"
    t.index ["user_id"], name: "index_user_allowances_on_user_id"
  end

  create_table "user_information_settings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_informations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "key"
    t.string "value"
    t.bigint "user_information_settings_id"
    t.bigint "user_id"
    t.bigint "month_year_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["month_year_id"], name: "index_user_informations_on_month_year_id"
    t.index ["user_id"], name: "index_user_informations_on_user_id"
    t.index ["user_information_settings_id"], name: "index_user_informations_on_user_information_settings_id"
  end

  create_table "user_over_times", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "over_time_id"
    t.bigint "month_years_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["month_years_id"], name: "index_user_over_times_on_month_years_id"
    t.index ["over_time_id"], name: "index_user_over_times_on_over_time_id"
    t.index ["user_id"], name: "index_user_over_times_on_user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "employee_code"
    t.string "email"
    t.string "name"
    t.string "avatar"
    t.string "sex"
    t.string "phone"
    t.bigint "position_id"
    t.bigint "contract_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_users_on_contract_id"
    t.index ["position_id"], name: "index_users_on_position_id"
  end

  add_foreign_key "salaries", "month_years"
  add_foreign_key "salaries", "users"
  add_foreign_key "salary_items", "salaries", column: "salaries_id"
  add_foreign_key "salary_items", "salary_modules", column: "salary_modules_id"
  add_foreign_key "salary_settings", "contracts"
  add_foreign_key "salary_settings", "month_years"
  add_foreign_key "user_allowances", "allowances"
  add_foreign_key "user_allowances", "month_years", column: "month_years_id"
  add_foreign_key "user_allowances", "users"
  add_foreign_key "user_informations", "month_years"
  add_foreign_key "user_informations", "user_information_settings", column: "user_information_settings_id"
  add_foreign_key "user_informations", "users"
  add_foreign_key "user_over_times", "month_years", column: "month_years_id"
  add_foreign_key "user_over_times", "over_times"
  add_foreign_key "user_over_times", "users"
  add_foreign_key "users", "contracts"
  add_foreign_key "users", "positions"
end
