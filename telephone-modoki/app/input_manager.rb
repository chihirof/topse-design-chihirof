class InputManager

    attr_reader :command, :params

    # 入力値を分解する
    def decompose(input)
        inputs = input.split(" ")
        @command = inputs[0]
        inputs.delete_at(0)
        @params = inputs
    end

    # 入力待ち受け
    def self.wait_for_input
        input = gets
        if input == "\n"
            wait_for_input
        else
            input
        end
    end
end