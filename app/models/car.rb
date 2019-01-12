class Car < ApplicationRecord
belongs_to :user, optional: true 
  def car_type
    "#{brand} #{model}"
  end
end
