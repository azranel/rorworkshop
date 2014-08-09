class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  validates :title, :description, :price, presence: true
  validates :price, format: { with: /^(\$)?(\d+)(\.|,)?\d{0,2}?$/, multiline: true }

  def average_rating
    avg = 0.0
    reviews.each do |rev|
      avg += rev.rating
    end
    avg / reviews.size
  end
end
