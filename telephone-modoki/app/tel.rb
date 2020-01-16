class Tel

    attr_reader :phone_number

    def initialize(params)
        raise ArgumentError, "command is tel , invalid params" if params.size != 1
        @phone_number = params[0]
    end

    # 電話番号からユーザーを特定する
    def search_user
        phoneNumber = $phone_numbers[@phone_number]
        if phoneNumber != nil
            phoneNumber.user_name
        else
            nil
        end
    end

    # 電話番号から転送先を探す
    def search_dest
        phoneNumber = $phone_numbers[phone_number]
        if phoneNumber.transfer_dest
            phoneNumber.transfer_dest
        else
            nil
        end
    end

    def receive
        input = wait_for_receive
        return true if input
        # 転送先を探す
        transfer_dest = search_dest
        return false if transfer_dest == nil
        puts transfer_dest
        dest_input = wait_for_receive
        dest_input
    end

    def wait_for_receive
        input = select([STDIN],nil,nil,5)
    end

end