# encoding: utf-8

class SheetUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  # storage :file
  storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "sheets/#{model.scanid}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  def default_url
    "/images/fallback/" + ["sheet_default", version_name].compact.join('_') + ".jpg"
  end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  process :rotate => [90]
  process :resize_to_limit => [3200, 5000]
  process :lower_density => [150]


  def rotate(angle)
    manipulate! do |image|
      image.combine_options do |c|
        c.rotate angle.to_s
      end
    end
  end

  def lower_density(density_value)
    manipulate! do |image|
      image.combine_options do |c|
        c.density density_value.to_s
      end
    end
  end

  # Create different versions of your uploaded files:
  version :cover do
    process :resize_to_fit => [320, 500]
  end

  version :thumb do
    process :resize_to_fill => [300, 300]
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_white_list
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  def filename
    model.scanid if original_filename
  end

end
