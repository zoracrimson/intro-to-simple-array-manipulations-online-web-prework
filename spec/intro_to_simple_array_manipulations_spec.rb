describe "manipulating arrays" do

  context 'push method' do
    countries_in_western_africa = ["Benin", "Carpe Verde", "Gambia", "Liberia", "Mali"]
    next_country = "Niger"

    it "adds an element to the end of an array" do
      answer = countries_in_western_africa.push(next_country)
      expect(answer.last).to eq(next_country)
    end
  end

  context "unshift method" do
    neighborhoods_in_northwest_brooklyn = ["Brooklyn Yards", "Cadman Plaza", "Clinton Hill", "Downtown Brooklyn", "DUMBO"]
    prepends = "Brooklyn Heights"

    it "adds an element to the front of an array" do
      answer = neighborhoods_in_northwest_brooklyn.unshift(prepends)
      expect(answer).to eq(["Brooklyn Heights", "Brooklyn Yards", "Cadman Plaza", "Clinton Hill", "Downtown Brooklyn", "DUMBO"])
      expect(answer).to be_an(Array)
      expect(neighborhoods_in_northwest_brooklyn.count).to eq(6)
    end
  end

  context "pop method without an argument" do
    great_hits_of_the_nineties = ["Baby One More Time", "Smells Like Teen Spirit", "Missing", "Walking On The Sun", "Hard Knock Life", "Losing My Religion"]

    it "removes the last element from an array and returns it as the result of the method call" do
      answer = great_hits_of_the_nineties.pop
      expect(answer).to eq("Losing My Religion")
    end

    it "shortens the length of the array by 1" do
      expect(great_hits_of_the_nineties.length).to eq(5)
    end
  end

  context "pop method with an argument" do
    characters_in_the_cosby_show = ["Olivia Kendall", "Lt. Martin Kendall", "Pam Tucker", "Elvin Tibideaux", "Sondra Huxtable Tibideaux", "Rudith Rudy Lilian Huxtable", "Vanessa Huxtable", "Theodore Aloysius Huxtable", "Denise Huxtable Kendall", "Clair Olivia Hanks Huxtable", "Dr. Heathcliff Huxtable"]
    removed = ["Clair Olivia Hanks Huxtable", "Dr. Heathcliff Huxtable"]

    it "removes the last 2 elements in an array and returns them as the result of the method call" do
      answer = characters_in_the_cosby_show.pop(2)
      expect(answer).to eq(removed)
      expect(answer.count).to eq(2)
    end
  end

  context "shift method without an argument" do
    my_favorite_cities = ["Lagos", "Cape Town", "Nairobi", "San Francisco", "Gaborone", "New York", "Berlin", "London"]

    it "returns the first element in the array as the result of the method call" do
      answer = my_favorite_cities.shift
      expect(answer).to eq("Lagos")
    end

    it "shortens the length of the array by 1" do
      expect(my_favorite_cities.length).to eq(7)
    end
  end

  context "shift method with an argument" do
    ice_cream_brands = ["Blue Bell Creameries", "Ben & Jerry's", "Baskin Robbins", "Braum's", "Breyer's"]
    removed = ["Blue Bell Creameries", "Ben & Jerry's"]

    it "removes and returns the first 2 elements in array" do
      answer = ice_cream_brands.shift(2)
      expect(answer).to eq(removed)
      expect(ice_cream_brands.count).to eq(3)
    end
  end

  context "concat method" do
    ice_cream_brands = ["Blue Bell Creameries", "Ben & Jerry's", "Baskin Robbins", "Braum's", "Breyer's"]
    prepends = ["Mauds Ice Cream"]

    it "adds the elements in one array to the end of a second array on which concat is called on" do
      answer = ice_cream_brands.concat(prepends)
      expect(answer).to eq(["Blue Bell Creameries", "Ben & Jerry's", "Baskin Robbins", "Braum's", "Breyer's", "Mauds Ice Cream"])
      expect(answer).to be_an(Array)
      expect(ice_cream_brands.count).to eq(6)
    end
  end

  context "insert method" do
    list_of_esoteric_programming_languages = ["Ante", "ArnoldC", "Befunge", "Binary lambda calculus", "Chef", "GolfScript", "Ook!"]
    prepends = "Malbolge"

    it "inserts an element to the of the seventh position in list_of_esoteric_programming_languages array" do
      answer = list_of_esoteric_programming_languages.insert(6, prepends) #cardinal number

      expect(answer).to eq(["Ante", "ArnoldC", "Befunge", "Binary lambda calculus", "Chef", "GolfScript", "Malbolge", "Ook!"])
      expect(list_of_esoteric_programming_languages.count).to eq(8)
    end
  end

  context "uniq method" do
    captain_planet_and_the_planeteers = ["Captain Planet", "Gaia", "Kwame", "Gi", "Linka", "Wheeler", "Gaia"]
    new_array = ["Captain Planet", "Gaia", "Kwame", "Gi", "Linka", "Wheeler"]
    it "returns a new array by removing duplicate values in an array" do
      answer = captain_planet_and_the_planeteers.uniq
      expect(answer).to eq(["Captain Planet", "Gaia", "Kwame", "Gi", "Linka", "Wheeler"])
      expect(answer.count).to eq(6)
      expect(captain_planet_and_the_planeteers).to_not eq(new_array)
    end
  end

  context "flatten method" do
    private_colleges_in_newyork = ["New York University", "Manhattan School of Music ", "Columbia University", "The Juilliard School", "Bard College", "Cooper Union"]
    military_academies_in_newyork = ["United States Military Academy at West Point", " United States Merchant Marine Academy"]

    it "returns a new array that is a combination of two or more arrays" do
      answer = private_colleges_in_newyork.push(military_academies_in_newyork).flatten
      expect(answer).to eq(["New York University", "Manhattan School of Music ", "Columbia University", "The Juilliard School", "Bard College", "Cooper Union", "United States Military Academy at West Point", " United States Merchant Marine Academy"])
      expect(answer.count).to eq(8)
    end
  end

  context "delete method" do
    most_popular_boy_names_2014 = ["Liam", "Noah", "Ethan", "Mason", "Logan", "Lucas", "Jacob", "Aiden", "Jackson", "Jack"]

    it "deletes all items in array that are equal to the item passed as an argument" do
      answer =  most_popular_boy_names_2014.delete("Jack")
      expect(answer).to eq("Jack")
    end
  end

  context "delete_at method" do
    most_popular_girl_names_2014 = ["Emma", "Olivia","Sophia","Ava", "Isabella", "Mia", "Charlotte", "Emily", "Abigail", "Harper"]

    it "delete item at the third position in most_popular_girl_names_2014 a" do
      answer = most_popular_girl_names_2014.delete_at(2) # replace the underscore with your answer
      expect(answer).to eq("Sophia",)
      expect(most_popular_girl_names_2014.count).to eq(9)
    end
  end
end
