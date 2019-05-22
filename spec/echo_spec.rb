require 'echo'

RSpec.describe Echo do
  let(:subject) {described_class.new}
  context '#prompt' do
    it 'ask you to say something' do
      expect{subject.prompt}.to output('Say something!').to_stdout
    end
  end

end