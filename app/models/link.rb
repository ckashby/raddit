class Link < ApplicationRecord
  acts_as_votable
  validates_presence_of :title, :url
  belongs_to :user
  has_many :comments 
end
