class Attachment < ActiveRecord::Base
  mount_uploaders :path, AttachmentUploader
  belongs_to :file, polymorphic: :true
end
