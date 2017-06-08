class Location < ApplicationRecord

  has_many :postings, :dependent => :destroy
end
