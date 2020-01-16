class PhoneNumber

    attr_reader :phone_number, :user_name
    attr_accessor :transfer_dest
  
    def initialize(phone_number, user_name)
      @phone_number = phone_number
      @user_name = user_name
    end

  end