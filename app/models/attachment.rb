class Attachment < ApplicationRecord
  mount_uploader :file_path, FileUploader
end
