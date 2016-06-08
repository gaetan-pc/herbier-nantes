# Riiif::Image.file_resolver.base_path = Rails.root.join('storage','herbarium').to_s
# Riiif::not_found_image = Rails.root.join('storage','herbarium','default.jpg').to_s
# Riiif::Image.new('no_image', Riiif::File.new(Riiif.not_found_image))

#HTTP File Resolver
Riiif::Image.file_resolver = Riiif::HTTPFileResolver.new

Riiif::Image.file_resolver.id_to_uri = lambda do |id|
  "https://herbier-nantes.s3.amazonaws.com/sheets/#{id}/#{id}.jpg"
end
