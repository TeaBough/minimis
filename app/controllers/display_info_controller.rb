class DisplayInfoController < ApplicationController

  def update
    @subventions_done = Subvention.done(params[:siret]).paginate(:page => params[:done_page], :per_page => 10 )
    @subventions_not_done = Subvention.not_done(params[:siret]).paginate(:page => params[:not_done_page], :per_page => 10 )
    sub = @subventions_done.first
    @entreprise = Hashie::Mash.new({siret: sub.NumSiret, raison_social: sub.RSocMo, l1: sub.RueMo.gsub('*', ' ').gsub(/-.*/, ''), l2: sub.VilleResidMo, l3: sub.CodePostalMo})

    @total_aide_publique = 0.0
    @subventions_done.each do |sub|
      @total_aide_publique = @total_aide_publique + sub.montant_aide_publique
    end


  end
end
