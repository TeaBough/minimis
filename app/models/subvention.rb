class Subvention < ActiveRecord::Base
  def self.find_by_siret(siret)
    where(NumSiret: siret)
  end
end
