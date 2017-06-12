class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :messages, :dependent => :destroy
has_many :postings, :dependent => :destroy
has_many :conversations, :through => :users

  validates :username, :presence => true
  validates :venmo_username, :presence => true

# def conversations
#   Conversation.where("sender_id = ? OR receiver_id = ?", self.id, self.id)
# end
end
