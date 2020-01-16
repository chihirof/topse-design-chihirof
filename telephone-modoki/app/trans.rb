class Trans

    attr_accessor :src, :dest

    def initialize(params)
        raise ArgumentError, "command is trans , invalid params" if params.size != 2
        @src, @dest = params
    end

    # 転送先を登録する
    def register_transfer
        $phone_numbers.each do |key, value|
            if value.user_name == @src
                value.transfer_dest = @dest
            end
        end
    end
end

