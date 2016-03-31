def recurse1(drinks)
  popBottles = drinks
  emptyBottles = popBottles/2 
  emptyCaps = popBottles/4

  leftEmptyBottles = popBottles - (emptyBottles*2) 
  leftEmptyCaps = popBottles - (emptyCaps*4)


  freePop = emptyCaps + emptyBottles
  puts "<==========================================================================================>"
  puts "The user has bought #{popBottles} pops, now he/she is eligible for #{freePop} free pops."
  puts "The Free Pop breakdown:\n Empty Bottles ===> #{emptyBottles}\n Empty Caps ====> #{emptyCaps}"
  puts "The user is left with:\n Empty Bottles ====> #{leftEmptyBottles}\n Empty Caps ====> #{leftEmptyCaps}"
  recurse(freePop+leftEmptyBottles,freePop+leftEmptyCaps)
end


def recurse(x,y)
    if x<2 && y<4
      return
    else
      emptyBottles = x/2
      emptyCaps = y/4
      bottles = x - (emptyBottles*2) 
      caps = y - (emptyCaps*4)

      puts "<==========================================================================================>"
      puts "The Free Pop breakdown:\n Empty Bottles ===> #{emptyBottles}\n Empty Caps ====> #{emptyCaps}"
      puts "The user is left with:\n Empty Bottles ====> #{bottles}\n Empty Caps ====> #{caps}"
      recurse1(emptyBottles+emptyCaps)
    end
 
end

def total_bottles_of_pop(investment)

  popBottles = investment/2 
  emptyBottles = popBottles/2 
  emptyCaps = popBottles/4

  leftEmptyBottles = popBottles - (emptyBottles*2) 
  leftEmptyCaps = popBottles - (emptyCaps*4)


  freePop = emptyCaps + emptyBottles
  puts "The user has bought #{popBottles} pops, now he/she is eligible for #{freePop} free pops."
  puts "The Free Pop breakdown:\n Empty Bottles ===> #{emptyBottles}\n Empty Caps ====> #{emptyCaps}"
  puts "The user is left with:\n Empty Bottles ====> #{leftEmptyBottles}\n Empty Caps ====> #{leftEmptyCaps}"
  recurse(freePop+leftEmptyBottles,freePop+leftEmptyCaps)
end
# loop do 
  puts "Enter your amount:Otherwise, press 0 to quit."
  investAmount =  gets.chomp.to_i
  total_bottles_of_pop(investAmount)
  # case investAmount
  # when 0
  #   break
  # else
  #   total_bottles_of_pop(investAmount)
  # end
# end