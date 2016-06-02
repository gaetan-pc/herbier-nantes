class CreateSpecimens < ActiveRecord::Migration
  def self.up
    create_table :specimens do |t|
      t.string :identifiedBy
      t.string :familly_ref
      t.string :familly
      t.integer :genus_ref
      t.integer :species_ref
      t.string :genus
      t.string :species
      t.string :taxon
      t.string :scan_num
      t.string :sheet
      t.string :string
      t.string :record_date_note
      t.string :author
      t.string :subspecies
      t.integer :specimen_count
      t.string :material_organ
      t.integer :material_integrity
      t.integer :material_state
      t.string :province_code
      t.string :province
      t.string :municipality
      t.string :locality
      t.string :sampling_location
      t.string :latitude
      t.string :float
      t.string :longitude
      t.string :float
      t.string :habitat
      t.string :remarks_1
      t.string :remarks_2

      t.timestamps null: false
    end
  end

  def self.down
    drop_table :specimens
  end
end
