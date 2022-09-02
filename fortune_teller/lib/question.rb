require_relative 'dialog'
class Question  

  attr_accessor :prompt, :input, :prediction
  
  def ask(prompt, speed = 0.04)
    DialogSpeed.new.insert_dialog(prompt, speed)
    @input = gets.chomp.downcase  
  end

  def question_loop( q, inp1, inp2, inp3, inp4, r1, r2, r3, r4  )
    loop do
      @repeat = false
      @input = Question.new.ask(q)
      if @input == inp1
        @prediction = r1
      elsif @input == inp2  
        @prediction = r2
      elsif @input == inp3
        @prediction = r3
      elsif @input == inp4
        @prediction = r4
      else
        Dialog.new.comment( "\nThat wasn't an option.  Try again.", 0.03, 0.03)
        @repeat = true
      end
      break if @repeat == false      
    end  
    @prediction 
  end

end

