class Car < ApplicationRecord

  def car_type
    "#{brand} #{model}"
  end
end
