def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  20.times do
  return rand(1...11)
end
end


def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

display_card_total(8)



def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end


def get_user_input
  # code #get_user_input here
  return gets.chomp

end


def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end



def initial_round
  # code #initial_round here

  card_one = deal_card
  card_two = deal_card

puts "#{card_one} and #{card_two} "
total = card_one + card_two
display_card_total(total)
return total
end


describe "#initial_round" do

  it "calls on #deal_card twice and returns the sum" do
    expect(self).to receive(:deal_card).at_least(:twice).and_return(6)
    expect(initial_round).to eq(12)
  end

  it "calls on the '#display_card_total' to print sum of cards" do
    expect(self).to receive(:deal_card).at_least(:twice).and_return(6)
    expect($stdout).to receive(:puts).with(/Your cards add up to /)
    initial_round
  end

end







def hit?
  # code hit? here
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
