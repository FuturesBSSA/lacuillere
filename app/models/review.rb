class Review < ActiveRecord::Base
  belongs_to :restaurant
  validates :rating, presence: true
  validates_numericality_of :rating, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5
  validates :content, presence: true
  validates :restaurant_id, presence: true
end
