class Conversation < ApplicationRecord



  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'



  validates :sender, uniqueness: {scope: :receiver}
has_many :messages, -> { order(created_at: :asc) }, dependent: :destroy

scope :between, -> (sender_id, receiver_id) do
    where(" (conversations.sender_id = ? AND conversations.receiver_id =?) OR (conversations.sender_id = ? AND conversations.receiver_id =?) ", sender_id, receiver_id, receiver_id, sender_id)
  end

  scope :participating, -> (user) do
  where("(conversations.sender_id = ? OR conversations.receiver_id = ?)", user.id, user.id)
end



end
