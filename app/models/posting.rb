class Posting < ApplicationRecord
  belongs_to :location
belongs_to :event
belongs_to :user
end
