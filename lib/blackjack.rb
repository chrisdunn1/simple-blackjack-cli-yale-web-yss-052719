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

#puts "#{card_one} and #{card_two} "
total = card_one + card_two
display_card_total(total)
return total
end





def hit?(total)
  # code hit? here
  prompt_user
  drawcard = get_user_input

  case drawcard
  when 's'
##
return total
    
  when 'h'
  else

end

describe "#hit?" do
  before(:each) do
    def get_user_input
      "s"
    end
  end

  it "calls on #prompt_user then #get_user_input" do
    expect($stdout).to receive(:puts).with("Type 'h' to hit or 's' to stay")
    expect(self).to receive(:get_user_input).and_return("s")
    hit?(7)
  end

  it "returns an integer which is the card total" do
    expect(self).to receive(:get_user_input).and_return("s")
    expect(hit?(20)).to eq(20)
  end

  it "does not deal another card if user types 's'" do
    expect(self).to receive(:get_user_input).and_return("s")
    expect(hit?(7)).to eq(7)
  end

  it "deals another card when user types 'h'" do
    expect(self).to receive(:get_user_input).and_return("h")
    expect(self).to receive(:deal_card).and_return(7)
    expect(hit?(7)).to eq(14)
  end

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
