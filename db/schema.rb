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

ActiveRecord::Schema.define(version: 20151220162949) do

  create_table "cargos", force: :cascade do |t|
    t.string   "tipo"
    t.float    "salario"
    t.integer  "ch"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "endereco"
    t.string   "cpf"
    t.text     "satisfacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empregadors", force: :cascade do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "endereco"
    t.string   "cnpj"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empregados", force: :cascade do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "endereco"
    t.string   "dataadm"
    t.string   "cpf"
    t.string   "rg"
    t.integer  "cargo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "empregados", ["cargo_id"], name: "index_empregados_on_cargo_id"

  create_table "funcaos", force: :cascade do |t|
    t.string   "tipo"
    t.float    "salario"
    t.integer  "ch"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ordems", force: :cascade do |t|
    t.string   "equipamento"
    t.text     "defeito"
    t.string   "marca"
    t.text     "descricao"
    t.string   "status"
    t.float    "valor"
    t.integer  "cliente_id"
    t.integer  "tecnico_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "ordems", ["cliente_id"], name: "index_ordems_on_cliente_id"
  add_index "ordems", ["tecnico_id"], name: "index_ordems_on_tecnico_id"

end
