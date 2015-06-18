class CreateSubvention < ActiveRecord::Migration
  def change
    create_table :subventions do |t|
      t.string :NumSiret
      t.string :RSocMo
      t.string :LocalibCommune
      t.string :LocaCodArdt
      t.string :LocalibDept
      t.integer :LocaCodDept
      t.string :LocalibReg
      t.integer :LocaCodReg
      t.string :CodeINSEECommuneMo
      t.string :VilleResidMo
      t.string :CodePostalMo
      t.string :RueMo
      t.string :LibCodeNafMo
      t.string :LibNatureMo
      t.string :GeoCodeLocal
      t.string :geeoinseemo
      t.string :GeoInseeMo
      t.float :TotalDepRetvalidAC
      t.float :TotpayeMoMt
      t.float :TotpayePrivMt
      t.float :TotpayeAPMt
      t.float :TotpayeDeptMt
      t.float :TotpayeRegionMt
      t.float :TotpayeEtatMt
      t.float :TotpayeUEMt
      t.float :DerPfvTotProgRegionCper
      t.float :DerPfvTotProgEtatCper
      t.float :DerPfvTotProgApMt
      t.float :DerPfvTotProgDeptMt
      t.float :DerPfvTotProgRegionMt
      t.float :DerPfvTotProgEtatMt
      t.float :DerPfvTotProgUEMt
      t.float :DerPfvCTotEligProgMt
      t.float :MntCoutglobProjet
      t.string :DtPremierComite
      t.string :DtLimFinRealPhy
      t.string :DtLimDebutRealPhy
      t.string :DtDepotDoss
      t.string :IndicSoldeDossier
      t.string :IndicPayeDossier
      t.string :LibStatus
      t.string :LibDossier
      t.string :LibelleFonds
      t.string :CodeDossier
      t.string :LocaCodCommune
      t.string :LocalibCanton
      t.string :LocaCodCanton
      t.string :LocalibArdt
    end
  end
end
