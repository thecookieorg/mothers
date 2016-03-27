class User < ActiveRecord::Base
  #rolify
  ROLES = %i[admin client_admin client]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :messages
  has_many :comments, dependent: :destroy
  has_many :documents
  
  #after_create :send_notification
  
  #def send_notification
    #AdminMailer is our mailer that we created, (self) is the current user who just registered, and .deliver is actually doing delivery of emails
   # AdminMailer.new_user(self).deliver 
  #end
         
end
