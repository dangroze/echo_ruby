class Echo

  def prompt
    print 'Say something: '
  end

  def answer
    @a = STDIN.gets.chomp
  end

  def engine
    loop do
      prompt
      answer
      if @a == "exit"
        puts "Goodbye"
        break
      else
        time_converter
      end
    end    
  end
  
  private

  def time_converter
    puts Time.now.strftime("%Y-%m-%d | %H:%M | You said: #{@a}")
  end

end