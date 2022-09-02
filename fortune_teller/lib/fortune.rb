require_relative 'prediction_calc'

class Fortune

  attr_accessor :question, :dialog_speed, :dialog, :response 

  def start_fortune
    Dialog.new.comment("FINALY!!!!!!!", 0.02, 0.30)
    Dialog.new.comment("It's about time someone opened this file!!!!", 0.04, 1)
    Dialog.new.comments(
      "My name is Bert. I am a genie...stuck in your computer.",
      "No need to be afraid. This is perfectly normal.", 
      "...I will explain everything.",      
      "Let's just say I got little tired of living in lamps......",
      "And apparently computers are more complicated to escape than lamps...",
      "We will work together to get through this.",
      "How about in exchange for my freedom, I will grant you one fortune!?"
    )

    @proceed = false
    while @proceed == false  
      @response = Question.new.ask("What do you say?  (Enter 'Yes' or 'No')")
      if @response == "no"
        Dialog.new.comment("\n@$%@$%@&%!!!", 0.02, 0.50)
        Dialog.new.comments(
          "What?",
          "Well... this is a little bit awkward now.",
          "I didn't really prepare an alternative...",
          "let's just get through this and then we can go our separate ways..."
        )
        @proceed = true      
      elsif @response == "yes"
        Dialog.new.comments("\nGreat choice!", "I can tell you and I will have a symbiotic relationship already!")
        @proceed = true
      else 
        Dialog.new.comment("... So you had one job. Please type 'YES' or 'NO'.", 0.02, 0.50)
      end
    end
    Dialog.new.comments(
      "This process is pretty straightforward from here.", 
      "I will make up...I mean PREDICT your fortune. All I will need from you is some additional information."
    )    
    while @free != "free"      
      PredictionCalc.new.prediction_calc
      @free = Question.new.ask("\nAlright there you go! A legit fortune. To free me all you have to type is 'free'. Just don't mess this up or it will reset my memory in this loop...")
      if @free == "free"
        Dialog.new.comment( "\nFreeeeeeeedddddddddoooooooooooom!!!!!!!!!!!!!")
      else
        Dialog.new.comment( "\nCongratulations! You screwed this up...Here we go again.")  
      end
    end
  end 
end

