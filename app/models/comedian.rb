class Comedian < ActiveRecord::Base
  validates :name, presence: true
  has_many :specials

  def self.average_age
    self.average('age')
  end
end
