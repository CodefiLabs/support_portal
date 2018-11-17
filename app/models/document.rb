class Document < ApplicationRecord
    mount_uploader :picture, ImageUploader
end
