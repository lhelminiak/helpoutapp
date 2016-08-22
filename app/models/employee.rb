class Employee < ActiveRecord::Base


before_save :full_name

def full_name
  @full_name = "#{first_name} #{last_name}"
end

end
