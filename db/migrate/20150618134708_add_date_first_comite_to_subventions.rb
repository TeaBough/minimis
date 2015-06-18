class AddDateFirstComiteToSubventions < ActiveRecord::Migration
  def change
    add_column :subventions, :date_fist_comite, :date
  end
end
