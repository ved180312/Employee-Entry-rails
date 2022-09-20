class Employee < ApplicationRecord
    validates :first_name ,:last_name, presence: true,  
    length: { minimum: 2, maximum: 15}

    # validates :personal_email, presence: true, 
    # uniqueness: { case_sensitive: false }, 
    # length: {minimum: 5, maximum:30 }
    
    validates :city, :state, :pincode ,
    :country,:address_1,:address_2 , presence: true, 
     length: {minimum: 2, maximum: 20}



    def name
        "#{first_name} #{last_name}".strip
    end

    def full_address
        "#{address_1} ,#{city} ,#{state},#{country}, #{pincode}"
    end

end
