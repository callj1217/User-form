class User < ApplicationRecord
 has_one :car
  def user_data
    "#{first_name} #{last_name} #{birth}"
   
  end
end
