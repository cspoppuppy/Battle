require 'game'

describe Game do
  let(:player1) { double(:player) }
  let(:player2) { double(:player) }
  let(:game) { Game.new(player1, player2) }

  describe '#player1' do
    it 'shows player1' do
      expect(game.player1).to eq player1
    end
  end

  describe '#player2' do
    it 'shows player2' do
      expect(game.player2).to eq player2
    end
  end

  describe '#attack' do
    it 'player1 attack player2' do
      # allow(player1).to receive(:attack).and_return(5)
      expect(player2).to receive(:damage)
      game.attack(player2)
    end
  end
end