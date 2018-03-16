class Comedian < ActiveRecord::Base
  validates :name, presence: true
  has_many :specials
end
