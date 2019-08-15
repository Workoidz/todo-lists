class Profile < ActiveRecord::Base
  belongs_to :user

  validate :first_last_both_not_null, :either_male_or_female, :sue_cannot_be_male

  def sue_cannot_be_male

  	if (first_name == "Sue" and gender == "male")
  		errors.add(:first_name," Sue Cannot be male ")
  	end
  	
  end


  def either_male_or_female

  	if (gender != "male" and gender != "female")
  		errors.add(:gender,"Either male or female")
	end

  end



  def first_last_both_not_null

  	if (first_name.nil?  and last_name.nil?)
  		errors.add(:first_name," First Name ANd Last Name, both cannot be emptied ")
  	end
  	
  end




end

