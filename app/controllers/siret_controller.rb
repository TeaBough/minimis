class SiretController < ApplicationController
  def index
  end
  def update
    redirect_to url_for({controller: :display_info, action: :update, siret: params[:siret2]})
  end
end
