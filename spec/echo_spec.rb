require 'echo'

RSpec.describe Echo do

  let(:echo) {described_class.new}

  context '#prompt' do
    it 'asks you to say something' do
      expect{echo.prompt}.to output('Say something: ').to_stdout
    end
  end

  context '#answer' do
    it 'user can respond' do
      allow(STDIN).to receive(:gets).and_return('hello')
      expect(echo.answer).to eq('hello')
    end
  end

  context '#engine' do
    it 'shows the converted time' do
      time = Time.new(2018, 01, 9, 16, 26, 2, "+00:00")
      allow(STDIN).to receive(:gets).and_return('hello')
      allow(Time).to receive(:now).and_return(time)
      allow(echo).to receive(:loop).and_yield
      expect{echo.engine}.to output("Say something: 2018-01-09 | 16:26 | You said: hello\n").to_stdout
    end
    it 'says Goodbye and breaks loop when user enters exit' do
      time = Time.new(2018, 01, 9, 16, 26, 2, "+00:00")
      allow(STDIN).to receive(:gets).and_return('exit')
      allow(Time).to receive(:now).and_return(time)
      expect{echo.engine}.to output(
        "Say something: Goodbye\n").to_stdout
    end
  end
  
end