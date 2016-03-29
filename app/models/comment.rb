class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :message
  belongs_to :document
end
