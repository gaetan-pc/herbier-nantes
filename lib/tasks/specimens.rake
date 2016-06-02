require 'csv'

namespace :specimens do 

  desc "Import initial catalog data"
  task seed_catalog: :environment do
    filename = File.join Rails.root, "docs/catalog.csv"
    counter = 0
    CSV.foreach(filename, {:col_sep => "\t", :headers => true}) do |row|
      #TODOS: init headers map
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