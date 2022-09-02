require_relative 'question'

class PredictionCalc

  attr_accessor :name_input, :age, :age_input, :color, :activity, :location

  def prediction_calc
    @name_input = Question.new.ask("\nWhat is your name?\n")
    loop do
      @age_input = Question.new.ask("\nHow old are you?\n")
      @age_input = @age_input.to_i
      if @age_input == 0
        Dialog.new.comment("\nPlease enter a valid age.", 0.05, 0.03)
      end
      if @age_input <= 25
        @age =  "You will make very dumb decisions."
      elsif (@age_input >= 25) && (@age_input < 39)
        @age = "You will make some good decisions in your life."
      elsif (@age_input >= 39) && (@age_input < 60)
        @age =  "You will start to make some good career decisions"
      elsif (@age_input > 60)
        @age = "You will consider retiring."
      end
      break if @age_input != 0
    end

    def babies
      "BTW you will have #{rand(100)} babies."
    end

    @color = Question.new.question_loop(
      "\nWhat color do you prefer?\n\n-Options: 'blue', 'red', 'green', 'black'-\n",
      "blue","red","green","black",
      "You will have dreams of being an astronaut...But will spend most of your days fishing.",
      "You will excell as a pyro in a part time gig.",
      "You will love trees and work at a nature preserve. But you will secretly feel guilty for all the paper you use.",
      "You will find a well paying job with good benefits in the mafia."
    )

    @activity = Question.new.question_loop(
      "\nWhat activity do you prefer?\n\n-Options: 'running', 'swimming', 'reading', 'thinking'-\n",
      "running","swimming","reading","thinking",
      "You will become a famous marathon runner but will sell your shoes for income.",
      "You will accidently swim too far in the Bahamas and make your new permanent home on an island.",
      "You will read many books and become a so-so writer.",
      "You will become and remain as a junior level philosopher."
    )

    @location = Question.new.question_loop(
      "\nWhat location would you prefer?\n\n-Options: 'desert', 'beach', 'woods', 'city'-\n",
      "desert","beach","woods","city",
      "You will secretly live in the Grand Canyon and own a pet camel spider named Jeff.",
      "You will be overly tan but enjoy seafood for the rest of your life.",
      "You will be a wannabe survivalist who struggles to start fires.",
      "You will spend most of your days in traffic."
    )

    Dialog.new.comments( "\nOk #{@name_input.capitalize}. I have your fortune.",  "#{@age}",  "#{@color}",  "#{@activity}",  "#{@location}", "#{babies}" )
  end
end

# start = PredictionCalc.new.prediction_calc     #code test