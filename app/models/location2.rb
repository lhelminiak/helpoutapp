class Location2 < ActiveRecord::Base

before_save :full_address
def full_address
  @full_address = "#{street_address}, #{city}, #{state_code} #{zip_code}"
end

end
