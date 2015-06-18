class PopulateMontantAidePublique < ActiveRecord::Migration
  def change
    Subvention.find_each do |i|
      i.update_attributes(montant_aide_publique: i.TotalDepRetvalidAC - i.TotpayeMoMt - i.TotpayePrivMt)
    end
  end
end
