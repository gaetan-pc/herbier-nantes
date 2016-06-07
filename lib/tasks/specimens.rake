require 'csv'
require 'fileutils'

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

  desc "Create new records when scan_num duplicates are present"
  task clean_scan_dup: :environment do
    sd = Specimen.with_scan_dup
    sd.each do |s|
      s.scan_num.split(' ; ').each do |scan|
        new_s = s.dup
        new_s.scan_num = scan
        new_s.save!
        puts "New record with ID #{new_s.id} created from Specimen with ID #{s.id}"
      end
      puts "Going to destroy record with duplicates"
      s.destroy
    end
  end

  desc "Upload herbarium sheet previews"
  task upload_sheet: :environment do
    src = ENV['SRC']
    dest = ENV['DEST']
    path = Pathname.new(src)
    Dir.glob("#{src}/*.jpg").each do |image_file|
      # FileUtils.mv('/tmp/your_file', '/opt/new/location/your_file')
      puts "#{File.basename(image_file)} do query '#{File.basename(image_file, ".jpg")}' with path #{image_file}"
    end
  end
end
