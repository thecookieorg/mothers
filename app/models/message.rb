class Message < ActiveRecord::Base
    #resourcify
    validates :user_id, presence: true
    validates :title, presence: true
    belongs_to :user
    has_many :comments, dependent: :destroy
end
