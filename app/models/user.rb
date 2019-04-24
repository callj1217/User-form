class User < ApplicationRecord
  has_secure_password
  has_many :pets
  has_one :car
  validates :first_name, :last_name, :gmail, presence: true 
  validates_uniqueness_of :gmail
  def user_data
    "#{first_name} #{last_name} #{birth} #{shoe_size} #{us_citizen}"
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

  def pets_display()
    if self.pets
      pets.each do |pet|
        pet.pet_name
      end
    else
      "Does not own pets"
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
