class Specimen < ActiveRecord::Base
  acts_as_mappable
  searchkick

  scope :with_scan_dup, -> {
    where('scan_num LIKE ?', '%;%')
  }

  #IMAGE UPLOADER
  mount_uploader :sheet, SheetUploader

  geocoded_by :location

  def location
    [locality, municipality, "France"].join(', ')
  end

  def scanid
    scan_num.gsub(/[())]/, '')
  end

  def self.find_with_scan(query)
    where do
      (scan_num == "#{query}")
    end
  end

end
