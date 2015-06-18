class AddMontantAidePubliqueToSubvention < ActiveRecord::Migration
  def change
    add_column :subventions, :montant_aide_publique, :float
  end
end
