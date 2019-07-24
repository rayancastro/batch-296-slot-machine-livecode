require_relative "../slot_machine"

def test_scenario(reels, expected_score)
  it "returns #{expected_score} for #{reels.join("/")}" do
    slot_machine = SlotMachine.new
    score = slot_machine.score(reels)
    expect(score).to eq(expected_score)
  end
end


describe SlotMachine do
  describe "#score" do
    it "returns 0 for three different symbols" do
      slot_machine = SlotMachine.new
      score = slot_machine.score([ "joker", "star", "bell" ])
      expect(score).to eq(0)
    end

    test_scenario(%w(joker joker joker), 50)
    test_scenario(%w(star star star), 40)
    test_scenario(%w(bell bell bell), 30)
    test_scenario(%w(seven seven seven), 20)
    test_scenario(%w(cherry cherry cherry), 10)
    test_scenario(%w(joker joker seven), 25)
    test_scenario(%w(star star joker), 20)
    test_scenario(%w(bell bell joker), 15)
    test_scenario(%w(seven seven joker), 10)
    test_scenario(%w(joker cherry cherry), 5)
    test_scenario(%w(bell cherry cherry), 0)
    test_scenario(%w(cherry seven bell), 0)




    # TODO: Implement all the rule combinations.
  end
end
