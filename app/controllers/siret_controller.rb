class SiretController < ApplicationController
  def index
  end
  def update
    puts "============"
    puts params
    @subventions = Subvention.find_by_siret(params[:siret])
    sub = @subventions.first
    puts sub.RSocMo
    @entreprise =  Hashie::Mash.new({siret: sub.NumSiret, raison_social: sub.RSocMo, l1: sub.RueMo.gsub('*',' ').gsub(/-.*/,'') , l2: sub.VilleResidMo, l3: sub.CodePostalMo})

  end
end
