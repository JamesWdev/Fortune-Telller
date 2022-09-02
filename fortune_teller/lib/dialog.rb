require_relative 'dialog_speed'

class Dialog
  
  def comment(text, speed = 0.03, pause = 1.50)
    DialogSpeed.new.insert_dialog(text, speed)
    sleep(pause)
  end

  def comments(*text)
    text.each do |x| 
      DialogSpeed.new.insert_dialog(x, 0.03)
      sleep(1.20) 
    end
  end 
end

