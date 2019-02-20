class Pet < ApplicationRecord
	belongs_to :user, optional: true
	def user_display()
    if self.user
     self.user.first_name
   else
    "not owned"
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
