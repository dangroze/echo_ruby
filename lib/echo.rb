class Echo

  def prompt
    print 'Say something: '
  end

  def engine
    prompt
    a = STDIN.gets.chomp
    a
  end
end