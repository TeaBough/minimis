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

ActiveRecord::Schema.define(version: 20150618135531) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "subventions", force: true do |t|
    t.string  "NumSiret"
    t.string  "RSocMo"
    t.string  "LocalibCommune"
    t.string  "LocaCodArdt"
    t.string  "LocalibDept"
    t.integer "LocaCodDept"
    t.string  "LocalibReg"
    t.integer "LocaCodReg"
    t.string  "CodeINSEECommuneMo"
    t.string  "VilleResidMo"
    t.string  "CodePostalMo"
    t.string  "RueMo"
    t.string  "LibCodeNafMo"
    t.string  "LibNatureMo"
    t.string  "GeoCodeLocal"
    t.string  "geeoinseemo"
    t.string  "GeoInseeMo"
    t.float   "TotalDepRetvalidAC"
    t.float   "TotpayeMoMt"
    t.float   "TotpayePrivMt"
    t.float   "TotpayeAPMt"
    t.float   "TotpayeDeptMt"
    t.float   "TotpayeRegionMt"
    t.float   "TotpayeEtatMt"
    t.float   "TotpayeUEMt"
    t.float   "DerPfvTotProgRegionCper"
    t.float   "DerPfvTotProgEtatCper"
    t.float   "DerPfvTotProgApMt"
    t.float   "DerPfvTotProgDeptMt"
    t.float   "DerPfvTotProgRegionMt"
    t.float   "DerPfvTotProgEtatMt"
    t.float   "DerPfvTotProgUEMt"
    t.float   "DerPfvCTotEligProgMt"
    t.float   "MntCoutglobProjet"
    t.string  "DtPremierComite"
    t.string  "DtLimFinRealPhy"
    t.string  "DtLimDebutRealPhy"
    t.string  "DtDepotDoss"
    t.string  "IndicSoldeDossier"
    t.string  "IndicPayeDossier"
    t.string  "LibStatus"
    t.string  "LibDossier"
    t.string  "LibelleFonds"
    t.string  "CodeDossier"
    t.string  "LocaCodCommune"
    t.string  "LocalibCanton"
    t.string  "LocaCodCanton"
    t.string  "LocalibArdt"
    t.date    "date_fist_comite"
  end

end
