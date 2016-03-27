class Document < ActiveRecord::Base
    mount_uploader :attachment, AttachmentUploader
    belongs_to :user
    validates_presence_of :title
end
