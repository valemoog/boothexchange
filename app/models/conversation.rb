class Conversation < ApplicationRecord



  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'



  validates :sender, uniqueness: {scope: :receiver}
has_many :messages, -> { order(created_at: :asc) }, dependent: :destroy



end
