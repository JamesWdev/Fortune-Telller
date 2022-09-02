class DialogSpeed
  def insert_dialog(text, speed = 0.01)
    text.chars.each do |letter|
      print(letter)
      sleep(speed)
    end
    print "\n"
    print "\n"
  end
end

