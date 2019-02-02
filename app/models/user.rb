class User < ApplicationRecord
 has_one :car
  def user_data
  "#{first_name} #{last_name} #{birth} #{num_siblings} #{shoe_size} #{us_citizen}"
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def car_display()
    if self.car
      self.car.brand
    else
      "Does not own a car"
    end
  end

  def print_yes_or_no(boolean)
    if boolean
      "Yes"
    else
      "No"
    end
  end
end
