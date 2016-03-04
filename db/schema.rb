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

ActiveRecord::Schema.define(version: 20150910010249) do

  create_table "cuestionarios", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "prefijo",    limit: 255
    t.string   "desc",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "respuestas", limit: 4
  end

  create_table "pais", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "paises", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "palabras", force: :cascade do |t|
    t.string   "palabra",      limit: 255
    t.integer  "cuestionario", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "respuesta", force: :cascade do |t|
    t.integer  "palabra",       limit: 4
    t.integer  "usuario",       limit: 4
    t.string   "respuesta",     limit: 255
    t.integer  "clasificacion", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "universidades", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "universidads", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.integer  "edad",         limit: 4
    t.boolean  "sexo"
    t.integer  "estado",       limit: 4
    t.integer  "hijos",        limit: 4
    t.integer  "nacionalidad", limit: 4
    t.integer  "nivel",        limit: 4
    t.integer  "universidad",  limit: 4
    t.integer  "semestre",     limit: 4
    t.string   "idu",          limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "educ",         limit: 255
    t.string   "carrera",      limit: 255
    t.string   "gradoobt",     limit: 255
  end

end
