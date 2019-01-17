class Car < ApplicationRecord
belongs_to :user, optional: true 
  def car_type
    "#{brand} #{model} #{num_wheels} #{engine_size} #{is_eletric} #{date_purchased}"
  end

  def print_yes_or_no(boolean)
  	if boolean
  		"Yes"
	else
		"No"
	end
  end
end
