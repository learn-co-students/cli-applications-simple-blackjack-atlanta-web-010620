def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1...11)
end

def display_card_total(num)
  # code #display_card_total here
  puts "Your cards add up to #{num}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(num)
  # code hit? here
  prompt_user
  i = 0 
  until i > 0 
    answer = get_user_input
    if answer == "s"
      return num
      i += 1 
    elsif answer == "h"
      num += deal_card
      i += 1
    else
      invalid_command
      prompt_user
    end
  end
  num
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  cards = initial_round
  until cards > 21
    cards = hit?(cards)
    display_card_total(cards)
  end
  end_game(cards)
end
    
