# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_08_172847) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fnrhs", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.date "check_in"
    t.date "check_out"
    t.string "meio_de_transporte"
    t.string "procedencia"
    t.string "motivo"
    t.string "prox_dest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "hotel"
    t.index ["user_id"], name: "index_fnrhs_on_user_id"
  end

  create_table "hotels", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nome"
    t.string "endereco"
    t.string "telefone"
    t.string "responsavel"
    t.string "cnpj"
    t.boolean "validado"
    t.index ["email"], name: "index_hotels_on_email", unique: true
    t.index ["reset_password_token"], name: "index_hotels_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "cpf", null: false
    t.string "tipo_doc", null: false
    t.string "num_doc", null: false
    t.string "expedidor", null: false
    t.string "nome_completo", null: false
    t.string "profissao", null: false
    t.date "nascimento", null: false
    t.string "sexo", null: false
    t.string "telefone", null: false
    t.string "cep", null: false
    t.string "complemento", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "fnrhs", "users"
end
