def welcome
    puts "Welcome to the Blackjack Table"
  end
  
  def deal_card
    return ((rand()*10)+1).to_i
  end
  
  def display_card_total(num) 
    puts "Your cards add up to #{num}"
    
  end
  
  def prompt_user
    puts "Type 'h' to hit or 's' to stay"
  end
  
  def get_user_input
    input = gets.chomp
    return input
  end
  
  def end_game(num)
    puts "Sorry, you hit #{num}. Thanks for playing!"
    
  end
  
  def initial_round
    card_total = 0
    2.times do 
      card_total += deal_card()
    end 
    display_card_total(card_total)
    return card_total
  end
  
  def invalid_command
    puts 'Please enter a valid command'
    # prompt_user()
  end
  
  
  
  def hit?(num)
    prompt_user()
    input = get_user_input()
    if input == 's'
    elsif input == 'h'
      num+=deal_card()
    else 
      invalid_command()
      prompt_user()
      input = get_user_input
    end
      return num
  end




  def runner
    welcome
    num = initial_round()
    
    until num > 21 do 
      num = hit?(num)
      display_card_total(num)
      
    end
  end_game(num)
  end
      
  