class Event < ApplicationRecord

has_many :postings, :dependent => :destroy

validates :image_url, :presence => true
validates :name, :presence => true
end
