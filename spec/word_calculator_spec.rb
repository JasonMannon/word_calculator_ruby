require ("rspec")
require ("word_calculator")

describe("word_calculator") do
  it("When 'what is 5 plus 3' is entered, should return 8") do
    word_calculator("what is 5 plus 3").should(eq(8))
  end
  it("When 'what is 5 minus 3' is entered, should return 2") do
    word_calculator("what is 5 minus 3").should(eq(2))
  end
  it("When 'what is 5 times 3' is entered, should return 15") do
    word_calculator("what is 5 times 3").should(eq(15))
  end
  it("When 'what is 6 divided by 3' is entered, should return 2") do
    word_calculator("what is 6 divided by 3").should(eq(2))
  end
  it("when 'what is 4 plus 6 divided by 2?' is entered, should return 7") do
    word_calculator("what is 4 plus 6 divided by 2?").should(eq(7))
  end
  it("when 'What is 2 plus 3? What is 7 divided by 4?' 5 and 1' should return 5 and 1") do
    sentance_calculator("What is 2 plus 3? What is 7 divided by 4?").should(eq("5, 1.75"))
  end
end
