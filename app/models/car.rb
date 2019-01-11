class Car < ApplicationRecord
belongs_to :user
  def car_type
    "#{brand} #{model}"
  end
end
