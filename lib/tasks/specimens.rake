require 'csv'

namespace :specimens do 

  desc "Import initial catalog data"
  task seed_catalog: :environment do
    filename = File.join Rails.root, "docs/catalog.csv"
    counter = 0
    header_dic = {
      "Collecteur" => "identifiedBy",
      "N°Famille" => "familly_ref",
      "Famille" => "familly",
      "N°Genre" => "genus_ref",
      "N°Espèce" => "species_ref",
      "Genre" => "genus",
      "Espèce" => "species",
      "date récolte" => "record_date_note",
      "Auteur" => "author",
      "N° scan" => "scan_num",
      "Subsp." => "subspecies",
      "Nb spécimens" => "specimen_count",
      "Partie conservée" => "material_organ",
      "Intégrité" => "material_integrity",
      "Etat" => "material_state",
      "Dpt" => "province_code",
      "Nom Dpt" => "province",
      "Commune" => "municipality",
      "Lieu dit" => "locality",
      "Lieu récolte" => "sampling_location",
      "Habitat" => "habitat",
      "remarques" => "remarks_1",
      "remarques perso" => "remarks_2",
      "Nom latin" => "taxon"
    }

    CSV.foreach(filename, :col_sep => ",", 
                          :headers => true,
                          :converters => :all,
                          :header_converters => lambda { |h| header_dic[h]}
                          ) do |row|
      specimen = Specimen.create(row.to_hash)
      puts "#{scan_num}/#{taxon} - #{specimen.full_messages.join(",")}" if specimen.errors.any?
      counter += 1 if specimen.persisted?
    end

    puts "Import de #{counter} données de catalog."
  end

  desc "Upload herbarium sheet previews"
  task upload_sheet: :environment do
    #TODOs
  end
  
end