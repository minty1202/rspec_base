class FizzBuzz
  def call(num)
    if num % 15 == 0
      puts 'fizz buzz'
    elsif num % 3 == 0
      puts 'fizz'
    elsif num % 5 == 0
      puts 'buzz' 
    else
      puts num
    end
  end
end

# fizz_buzz = FizzBuzz.new

# 30.times do |i|
#   fizz_buzz.call(i)
# end
