require 'echo'

RSpec.describe Echo do
  let(:echo) {described_class.new}
  context '#prompt' do
    it 'asks you to say something' do
      expect{echo.prompt}.to output('Say something: ').to_stdout
    end
  end
  context '#engine' do
    it "user can input an answer" do
      allow(STDIN).to receive(:gets).and_return('hello')
      expect(echo.engine).to eq('hello')  
    end
  end
end