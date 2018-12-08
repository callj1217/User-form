class User < ApplicationRecord

  def full_name
    "#{firstName} #{lastName}"
  end
end
