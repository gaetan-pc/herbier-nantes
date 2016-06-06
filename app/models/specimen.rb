class Specimen < ActiveRecord::Base
  searchkick

  #IMAGE UPLOADER
  mount_uploader :sheet, SheetUploader
end
