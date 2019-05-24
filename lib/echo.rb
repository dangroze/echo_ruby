class Echo

  def prompt
    print 'Say something: '
  end

  def answer
    @response = STDIN.gets.chomp
  end

  def engine
    prompt
    self.answer
    Time.now.strftime("%Y-%m-%d | %H:%M | You said: #{self.answer}")
  end
end