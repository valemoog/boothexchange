class Event < ApplicationRecord

has_many :postings, :dependent => :destroy

end
