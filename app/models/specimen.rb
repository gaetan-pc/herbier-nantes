class Specimen < ActiveRecord::Base
  acts_as_mappable

  searchkick

  #IMAGE UPLOADER
  mount_uploader :sheet, SheetUploader

  geocoded_by :location

  def location
    [locality, municipality, "France"].join(', ')
  end

end
