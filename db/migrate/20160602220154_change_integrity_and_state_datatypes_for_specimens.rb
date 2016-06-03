class ChangeIntegrityAndStateDatatypesForSpecimens < ActiveRecord::Migration
  def up
    change_column :specimens, :material_integrity, :string
    change_column :specimens, :material_state, :string
  end

  def down
    change_column :specimens, :material_integrity, :integer
    change_column :specimens, :material_state, :integer
  end
end
