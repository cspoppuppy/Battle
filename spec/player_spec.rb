require 'player'

describe Player do
  let(:player1) { Player.new('lastgreedymosquito') }
  let(:player2) { Player.new('preciousflower') }
  it 'has a name' do
    expect(player1.name).to eq 'lastgreedymosquito'
  end

  describe '#damage' do
    it 'reduces 10 HP' do
      expect { player2.damage }.to change{ player2.hp }.by(-10)
    end
  end
end