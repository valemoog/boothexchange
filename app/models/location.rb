class Location < ApplicationRecord

  has_many :postings, :dependent => :destroy

  validates :name, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
end
