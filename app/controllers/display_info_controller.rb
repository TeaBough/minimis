class DisplayInfoController < ApplicationController

  def update
    @subvention_all = Subvention.find_by_siret(params[:siret])
    if @subvention_all.size == 0 || @subvention_all.nil?
      return redirect_to root_path, :flash => { :alert => "Données indisponibles pour ce siret" }
    end
    @subventions_done = Subvention.done(params[:siret]).paginate(:page => params[:done_page], :per_page => 10)
    @subventions_not_done = Subvention.not_done(params[:siret]).paginate(:page => params[:not_done_page], :per_page => 10)
    sub = @subvention_all.first
    @entreprise = Hashie::Mash.new({siret: sub.NumSiret, raison_social: sub.RSocMo, l1: sub.RueMo.gsub('*', ' ').gsub(/-.*/, ''), l2: sub.VilleResidMo, l3: sub.CodePostalMo})

    @total_aide_publique = 0.0
    @subventions_done.each do |sub|
      @total_aide_publique = @total_aide_publique + sub.montant_aide_publique
    end
    @sub_year_1 = 0.0
    @sub_year_2 = 0.0
    @sub_year_3 = 0.0
    Subvention.done(params[:siret]).each do |sub|
      @sub_year_1 = @sub_year_1 + sub.montant_aide_publique if sub.date_fist_comite.year == 2013
      @sub_year_2 = @sub_year_1 + sub.montant_aide_publique if sub.date_fist_comite.year == 2012
      @sub_year_3 = @sub_year_1 + sub.montant_aide_publique if sub.date_fist_comite.year == 2011
    end

    @total_aide_publique = @sub_year_1 + @sub_year_2 + @sub_year_3
    @eligible_minimis  = @total_aide_publique < 200_000
  end
end
