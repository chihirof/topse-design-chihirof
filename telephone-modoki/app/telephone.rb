def validate(input)
  inputs = input.split(" ")
  inputs[1]
end

def search(phone_number)
  phone_numbers = {'03-0000-0000' => 'Taro', '03-0000-0001' => 'Jiro'}
  phone_numbers[phone_number]
end



puts "入力してください"
# 入力待ち受け
input = gets

phone_number = validate(input)
user = search(phone_number)
if user
  puts user
else
  return
end

# 入力を5秒間待ち受ける
input = select([STDIN],nil,nil,5)
if !input
  puts "Fail"
else
  return
end