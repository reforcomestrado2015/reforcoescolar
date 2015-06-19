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

ActiveRecord::Schema.define(version: 20150619135821) do

  create_table "alunos", force: :cascade do |t|
    t.string   "login"
    t.string   "email"
    t.string   "senha"
    t.string   "nome"
    t.string   "cpf"
    t.string   "fone1"
    t.string   "fone2"
    t.string   "logradouro"
    t.string   "cidade"
    t.string   "uf"
    t.string   "cep"
    t.string   "escola"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "alunos", ["email"], name: "index_alunos_on_email", unique: true
  add_index "alunos", ["login"], name: "index_alunos_on_login", unique: true

  create_table "disciplinas", force: :cascade do |t|
    t.string   "nome"
    t.string   "serie"
    t.string   "nivel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permissaoacessos", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors", force: :cascade do |t|
    t.string   "login"
    t.string   "email"
    t.string   "senha"
    t.string   "nome"
    t.string   "cpf"
    t.string   "fone1"
    t.string   "fone2"
    t.string   "logradouro"
    t.string   "cidade"
    t.string   "uf"
    t.string   "cep"
    t.float    "valorHoraAula"
    t.integer  "qtdvotos"
    t.integer  "qtdpontos"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "professors", ["email"], name: "index_professors_on_email", unique: true
  add_index "professors", ["login"], name: "index_professors_on_login", unique: true

end
