class Subvention < ActiveRecord::Base

  def self.find_by_siret(siret)
    where(NumSiret: siret)
  end

  def self.done(siret)
    find_by_siret(siret).where(IndicSoldeDossier: 'O').where(IndicPayeDossier: 'O').order(:date_fist_comite)
  end

  def self.not_done(siret)
    find_by_siret(siret).where.not(IndicSoldeDossier: 'O').where.not(IndicPayeDossier: !'O').order(:date_fist_comite)
  end
end
