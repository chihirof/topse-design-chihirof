require './phone_number'
require './input_manager'
require './tel'
require './trans'

def initialize_data
  $phone_numbers = {
    '03-0000-0000' => PhoneNumber.new('03-0000-0000', 'Taro'),
    '03-0000-0001' => PhoneNumber.new('03-0000-0001', 'Jiro')
  }
end

# Main
def main
  puts "入力してください"
  inputManager = InputManager.new
  input = InputManager.wait_for_input
  inputManager.decompose(input)

  if inputManager.command == "tel"
    tel = Tel.new(inputManager.params)
    user = tel.search_user
    if user
      puts user
      if tel.receive
        main
      else
        puts "Fail"
        return
      end
    else
      puts "user is not found"
      return
    end
  elsif inputManager.command == "trans"
    trans = Trans.new(inputManager.params)
    trans.register_transfer
    main
  elsif inputManager.command == "end"
    puts "..... end call"
    return
  else
    # Error
    puts "invalid command"
    return
  end
end

initialize_data
main