require 'pry'

def check_for_aces(ace_array)
  for i in 0..ace_array.length-1
    if ace_array[i][0][0].to_s == "Ace"
      if ace_array[i][0][1] == 11
        return true
      end
    end
  end

  return false

end

def convert_aces(ace_array)
  for i in 0..ace_array.length-1
    if ace_array[i][0][0].to_s == "Ace"
      ace_array[i][0][1] = 1
      return ace_array
    end
  end

  return ace_array

end

def check_total_count(cards)
  total = 0
  limit = cards.length-1
  for i in 0..limit
    total = cards[i][0][1] + total
  end

  return total

end


puts "Hello, what\'s your name?"
player_name = gets.chomp

puts "Hi #{player_name}, let\'s get started!"

playing = true
deck_of_cards = {Ace: 11, King: 10, Queen: 10, Jack: 10, Ten: 10, Nine: 9, Eight: 8, Seven: 7, Six: 6, Five: 5, Four: 4, Three: 3, Two: 2}
dealt_cards = []

while playing
  puts "Your first two cards are: \n"
  dealt_cards[0] = deck_of_cards.to_a.sample(1)
  dealt_cards[1] = deck_of_cards.to_a.sample(1)
  card_count = 2

  puts "#{dealt_cards[0][0][0]} #{dealt_cards[1][0][0]}"

  total_count = dealt_cards[0][0][1].to_i + dealt_cards[1][0][1].to_i
  if total_count == 22
    total_count = 12
  end
  
  puts "You have #{total_count}.  What would you like to do (hit/stand)?"
  decision = gets.chomp
  
  while decision == "hit"

    dealt_cards[card_count] = deck_of_cards.to_a.sample(1)
    puts "#{dealt_cards[card_count][0][0]}"
    total_count = check_total_count(dealt_cards)

    if check_total_count(dealt_cards) > 21
      while check_for_aces(dealt_cards) and total_count > 21
        dealt_cards = convert_aces(dealt_cards)
        total_count = check_total_count(dealt_cards)
      end

      if total_count > 21
        puts "Busted!  You have #{total_count}"
        break
      else
        puts "You now have #{total_count}.  What would you like to do (hit/stand)?"
      end

    else
      puts "You now have #{total_count}.  What would you like to do (hit/stand)?"
    end
    card_count = card_count + 1  
    decision = gets.chomp

  end

  playing = false
end

dealer_playing = true
dealer_total_count = 0
dealer_card_count = 0
dealer_cards = []
while dealer_playing
  dealer_cards[dealer_card_count] = deck_of_cards.to_a.sample(1)
  dealer_total_count = check_total_count(dealer_cards)
  if dealer_total_count > 21
    while check_for_aces(dealer_cards) and dealer_total_count > 21
      dealer_cards = convert_aces(dealer_cards)
      dealer_total_count = check_total_count(dealer_cards)
    end

    if dealer_total_count > 21
      puts "Busted!  The dealer has #{dealer_total_count}.  You Win!!"
      break
    end
  elsif dealer_total_count > 17
    dealer_playing = false
    if total_count > dealer_total_count
      puts "You Win"
    elsif total_count == dealer_total_count
      puts "Push!"
    else
      puts "You Lose!!"
  
    end
  end
  dealer_card_count = dealer_card_count + 1
end

for i in 0..dealer_cards.length-1
    puts dealer_cards[i][0][0]
end
