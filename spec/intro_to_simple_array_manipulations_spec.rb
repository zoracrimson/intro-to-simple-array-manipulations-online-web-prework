describe "manipulating arrays" do

  context 'push' do
    countries_in_western_africa = ["Benin", "Carpe Verde", "Gambia", "Liberia", "Mali"]
    next_country = "Niger"
    # Append—Pushes the given object(s) on to the
    # end of this array. This expression returns
    # the array itself, so several appends
    # may be chained together.

    it "pushes a given object on to the end of an array" do
      answer = __
      expect(countries_in_western_africa.last).to eq(next_country)
    end
  end

  context "pop method without an argument" do
    before(:each) do
      @great_hits_of_the_nineties = ["Baby One More Time", "Smells Like Teen Spirit", "Missing", "Walking On The Sun", "Hard Knock Life", "Losing My Religion"]
      @great_hits_of_the_nineties_minus_one = ["Baby One More Time", "Smells Like Teen Spirit", "Missing", "Walking On The Sun", "Hard Knock Life"]
    end

    it "returns the last element as the result of the method call" do
      answer = __
      expect(answer).to eq("Losing My Religion")
    end

    it "removes the last element in array" do
      answer = __
      expect(@great_hits_of_the_nineties).to eq(@great_hits_of_the_nineties_minus_one)
    end

  end

end
