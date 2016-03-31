def recurse(x,y)
    if x<2 && y<4
      return
    else
      emptyBottles = x/2
      emptyCaps = y/4
      bottles = x - (emptyBottles*2) 
      caps = y - (emptyCaps*4)
      test = emptyBottles+emptyCaps
      puts "<==========================================================================================>"
      puts "The Free Pop breakdown:\n Empty Bottles ===> #{emptyBottles}\n Empty Caps ====> #{emptyCaps}"
      puts "The user is left with:\n Empty Bottles ====> #{bottles}\n Empty Caps ====> #{caps}"
      @bottlesConsumed += test
      recurse(test+bottles,test+caps)
    end
end

def total_bottles_of_pop(investment)
  popBottles = investment/2 
  @bottlesConsumed = popBottles
  recurse(popBottles,popBottles)
end
 loop do 
  puts "Enter your amount:Otherwise, press 0 to quit."
  investAmount =  gets.chomp.to_i
  case investAmount
  when 0
    break
  else
    total_bottles_of_pop(investAmount)
    puts @bottlesConsumed
  end
 end