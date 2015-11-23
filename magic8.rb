#  magic8.rb
# also refactor calculator

# Description: Magic Eight Ball: Ask the ball a question and get a random answer. (Bonus objectives)

# Magic Eight Ball Pseudocode:
# Basic Objectives:
# - User inputs question                            DONE
# - Computer outputs random answer                  DONE
# - User inputs "QUIT"                              DONE
# - Computer outputs a goodbye message and exits    DONE
#
# Bonus Objectives:
# - ability to add more answers:
#   - via easter egg question ("add_answers")       DONE
#   - via script arguments (ruby magic_eight.rb add_answers)
#   - do not let them add the same answer if the eight ball already has that answer
#
# - ability to reset answers back to original bank (hint: think constants)
#   - via easter egg question ("reset_answers")
#
# - ability to have eight ball print all answers    DONE
#   - via easter egg question ("print_answers")
#  use an array to store all answers <<

#======================================================================
# Planning
# do with array
#======================================================================
# 1. get user to input a question for the 8 ball
# DONE
# addans = ARGV
# puts addans

original_bank = [
"It is certain",
"It is decidedly so",
"Without a doubt",
"Yes, definitely",
"You may rely on it",
"As I see it, yes",
"Most likely",
"Outlook good",
"Yes",
"Signs point to yes",
"Reply hazy try again",
"Ask again later",
"Better not tell you now",
"Cannot predict now",
"Concentrate and ask again",
"Don't count on it",
"My reply is no",
"My sources say no",
"Outlook not so good",
"Very doubtful"]

@random_ans = original_bank



def get_question
  puts "Ask the 8 ball a question (or exit):"
  question = gets.chomp

# 3. when the question == quit it will exit the program
# DONE

  if question == "exit"
    gotoexit
  elsif question == 'add_answers'
    add_answer
  elsif question == 'print_answers'
    print_answers
  # elsif question == 'reset_answers'
  #   reset_answers
  else
    #use below if you want to be able to save the questions
    #finans = random_ans
    #puts finans
    puts @random_ans.sample
    get_question
  end
end

# 2. computer outputs a random answer (provided from data bank)
# DONE

# def random_answer
#
#   puts "meow"
#   #puts "Random Answer: #{random_ans[4]}"
#   # this line will take a random string from the array,
#   # bring the string answer back to the else in get_question and use it there.
#
#   @random_ans.sample
#
# end

def add_answer
  puts "What answer would you like to  add?"
  new_answer = gets.chomp
  @random_ans << new_answer
  puts "It has been added."
  get_question

end

def print_answers
  puts "Here are all the answers:"
  puts @random_ans
  get_question
end

# def reset_answers(original_bank)
#
#   @random_ans = original_bank
#
#   puts "The ansewrs habe been reset."
#
#   get_question
# end
# 4. befor it exits, it will output a goodbye message
# DONE
def gotoexit
  puts "Thanks for your weird questions!"
  exit(0)
end

get_question
