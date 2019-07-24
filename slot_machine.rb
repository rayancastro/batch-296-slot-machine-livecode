class SlotMachine
  def initialize
  end

  def score(reels)
    arr = ["cherry", "seven", "bell", "star", "joker"]
    # caso todos sejam iguais, score - 50, 40, 30, 20, 10
    if reels[0] == reels[1] && reels[0] == reels[2]
     (arr.index(reels[0]) + 1) * 10
    # caso tenham dois joker e qq coisa, score - 25
    elsif reels.count('joker') == 2
      25
    # caso tenham dois iguais e um joker, score - 20,15,10,5
    elsif reels.include?("joker") && reels.uniq.count == 2
      reels.delete('joker')
      (arr.index(reels[0]) + 1) * 5
    else
      0
    end
    # caso contrario, score - 0
  end
end
