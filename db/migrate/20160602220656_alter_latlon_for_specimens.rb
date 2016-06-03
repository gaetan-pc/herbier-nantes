class AlterLatlonForSpecimens < ActiveRecord::Migration
  def up
    remove_column :specimens, :latitude
    remove_column :specimens, :longitude
    remove_column :specimens, :float
    add_column :specimens, :latitude, :float
    add_column :specimens, :longitude, :float
  end

  def down
    change_column :specimens, :latitude, :string
    change_column :specimens, :longitude, :string
  end
end
