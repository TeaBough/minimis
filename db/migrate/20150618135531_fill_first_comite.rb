class FillFirstComite < ActiveRecord::Migration
  def change
    Subvention.find_each do |i|
      if i.DtPremierComite == '00/01/1900'
         i.update_attributes(date_fist_comite: nil)
      else
        i.update_attributes(date_fist_comite: Date.parse(i.DtPremierComite))
      end
    end
  end
end
