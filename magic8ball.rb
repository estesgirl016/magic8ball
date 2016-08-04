@mistic = ['Most likely','YOU DON\'T','not likely','Did you really just ask me that?','My sources say "yes"','No','Yes','Seriously?!','Maybe','Reality check!','That\'s what everyone asks me','Don\'t be so obtuse','Eh! Wrong Question','Be Patient','Maybe later','Sure']

def escape
  puts "Would you like to escape while you still can?(yes/no)"
   input2 = gets.strip.downcase
   case input2
   when "yes"
     puts ""
     puts "You have chosen wisely. Goodbye!"
     exit
   when "no"
     question
   else
     "Invalid Selection. Please enter 'yes' or 'no'."
   end
end

def yn
  puts "Would you like to ask another question? (y/n)"
  user_input = gets.chomp.downcase
  case user_input
  when 'y'
    question
  when 'n'
    exit
  else
    yn
  end
end

def answer
    input_question = gets.to_s.downcase
    puts "Answer:"
    puts ""
    puts @mistic.sample
    puts ""
    yn
  end

def question
  puts "What is your Question?"

  answer
end

def ballmagic
  puts "You have entered the world of the Magic 8 Ball.  Awe and Wonder await as you learn the answers to all of life's questions. Proceed with Caution."
  puts ""
  escape
  question
end


ballmagic
