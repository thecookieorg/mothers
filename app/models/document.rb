class Document < ActiveRecord::Base
    mount_uploader :attachment, AttachmentUploader
    belongs_to :user
    has_many :messages
    validates_presence_of :title, :requested_by
end
