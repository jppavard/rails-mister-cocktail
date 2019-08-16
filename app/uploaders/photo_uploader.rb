class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

    def default_public_id
      "default_tqak2x"
    end

end
