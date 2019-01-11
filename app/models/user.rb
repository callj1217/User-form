class User < ApplicationRecord
 has_one :car
  def user_data
    "#{firstName} #{lastName} #{birth}"
   
  end
end
