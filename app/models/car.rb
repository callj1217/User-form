class Car < ApplicationRecord
belongs_to :user, optional: true 
  def car_type
    "#{brand} #{model} #{num_wheels} #{engine_size} #{is_eletric} #{date_purchased}"
  end

  def user_display()
    if self.user
     self.user.first_name
   else
    "not owned"
    end
  end

  def print_yes_or_no(boolean)
  	if boolean
  		"Yes"
  	else
  		"No"
  	end
  end


  def owner_select_options
    options_array = ['']
    User.all.each do |person|
      options_array << [person.full_name, person.id]
    end
    options_array
  end
end

