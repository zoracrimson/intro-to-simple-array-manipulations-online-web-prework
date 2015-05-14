require "pry"
describe "manipulating arrays" do

  context 'push method' do
    countries_in_western_africa = ["Benin", "Carpe Verde", "Gambia", "Liberia", "Mali"]
    next_country = "Niger"

    it "adds an element to the end of an array" do
      # replace the underscore with your answer
      answer = __
      expect(answer.last).to eq(next_country)
    end
  end

  context "unshift method" do
    neighborhoods_in_northwest_brooklyn = ["Brooklyn Yards", "Cadman Plaza", "Clinton Hill", "Downtown Brooklyn", "DUMBO"]
    new_neighborhood = "Brooklyn Heights"

    it "adds an element to the front of an array" do
      # replace the underscore with your answer
      answer = __
      expect(answer).to eq(["Brooklyn Heights", "Brooklyn Yards", "Cadman Plaza", "Clinton Hill", "Downtown Brooklyn", "DUMBO"])
      expect(answer).to be_an(Array)
    end

    it "increases the length of the array " do
      expect(neighborhoods_in_northwest_brooklyn.count).to eq(6)
    end
  end

  context "pop method without an argument" do
    great_hits_of_the_nineties = ["Baby One More Time", "Smells Like Teen Spirit", "Missing", "Walking On The Sun", "Hard Knock Life", "Losing My Religion"]

    it "removes the last element from an array and returns it as the result of the method call" do
      # replace the underscore with your answer
      deleted_string = __
      expect(deleted_string).to eq("Losing My Religion")
    end

    it "shortens the length of the array by 1" do
      expect(great_hits_of_the_nineties.length).to eq(5)
    end
  end

  context "pop method with an argument" do
    characters_in_the_cosby_show = ["Olivia Kendall", "Lt. Martin Kendall", "Pam Tucker", "Elvin Tibideaux", "Sondra Huxtable Tibideaux", "Rudith Rudy Lilian Huxtable", "Vanessa Huxtable", "Theodore Aloysius Huxtable", "Denise Huxtable Kendall", "Clair Olivia Hanks Huxtable", "Dr. Heathcliff Huxtable"]
    characters_removed = ["Clair Olivia Hanks Huxtable", "Dr. Heathcliff Huxtable"]

    it "removes the last 2 elements in an array and returns them as the result of the method call" do
      # replace the underscore with your answer
      answer = __
      expect(answer).to eq(characters_removed)
    end

    it "shortens the length of the array" do
      expect(characters_in_the_cosby_show.count).to eq(10)
    end
  end

  context "shift method without an argument" do
    my_favorite_cities = ["Lagos", "Cape Town", "Nairobi", "San Francisco", "Gaborone", "New York", "Berlin", "London"]

    it "returns the first element in the array as the result of the method call" do
      # replace the underscore with your answer
      deleted_city = __
      expect(deleted_city).to eq("Lagos")
    end

    it "shortens the length of the array by 1" do
      expect(my_favorite_cities.length).to eq(7)
    end
  end

  context "shift method with an argument" do
    ice_cream_brands = ["Blue Bell Creameries", "Ben & Jerry's", "Baskin Robbins", "Braum's", "Breyer's"]
    brands_removed = ["Blue Bell Creameries", "Ben & Jerry's"]

    it "removes and returns the first 2 elements in array" do
      # replace the underscore with your answer
      deleted_strings = __
      expect(deleted_strings).to eq(brands_removed)
    end

    it "shortens the length of the array by 2" do
      expect(ice_cream_brands.count).to eq(3)
    end
  end

  context "concat method" do
    ice_cream_brands = ["Blue Bell Creameries", "Ben & Jerry's", "Baskin Robbins", "Braum's", "Breyer's"]
    new_ice_cream_brand = ["Mauds Ice Cream"]

    it "adds the elements in one array to the end of a second array on which concat is called on" do
      # replace the underscore with your answer
      expanded_array = __
      expect(expanded_array).to eq(["Blue Bell Creameries", "Ben & Jerry's", "Baskin Robbins", "Braum's", "Breyer's", "Mauds Ice Cream"])
      expect(expanded_array).to be_an(Array)
    end

    it "increase the length of the array" do
      expect(ice_cream_brands.count).to eq(6)
    end
  end

  context "insert method" do
    list_of_esoteric_programming_languages = ["Ante", "ArnoldC", "Befunge", "Binary lambda calculus", "Chef", "GolfScript", "Ook!"]
    another_esoteric_language = "Malbolge"

    it "inserts an element to the of the sixth position in list_of_esoteric_programming_languages array" do
      # replace the underscore with your answer
      answer = __
      expect(answer).to eq(["Ante", "ArnoldC", "Befunge", "Binary lambda calculus", "Chef", "GolfScript", "Malbolge", "Ook!"])
    end

    it "increases the length of the array" do
      expect(list_of_esoteric_programming_languages.count).to eq(8)
    end
  end

  context "uniq method" do
    captain_planet_and_the_planeteers = ["Captain Planet", "Gaia", "Kwame", "Gi", "Linka", "Wheeler", "Gaia"]

    it "returns a new array by removing duplicate values in an array" do
      # replace the underscore with your answer
      new_array = __
      expect(new_array).to eq(["Captain Planet", "Gaia", "Kwame", "Gi", "Linka", "Wheeler"])
      expect(captain_planet_and_the_planeteers).to_not eq(new_array)
    end
  end

  context "flatten method" do
    private_colleges_in_newyork = ["New York University", "Manhattan School of Music ", "Columbia University", "The Juilliard School", "Bard College", "Cooper Union"]
    military_academies_in_newyork = ["United States Military Academy at West Point", " United States Merchant Marine Academy"]

    it "returns a new array that is a combination of two or more arrays" do
      # replace the underscore with your answer
      new_array = __
      expect(new_array.count).to eq(8)
    end
  end

  context "delete method" do
    most_popular_boy_names_2014 = ["Liam", "Noah", "Ethan", "Mason", "Logan", "Lucas", "Jacob", "Aiden", "Jackson", "Jack"]

    it "deletes all items in array that are equal to the item passed as an argument" do
       # replace the underscore with your answer
      deleted_name =  __
      expect(deleted_name).to eq("Jack")
    end

    it "changes the composition of the array" do
      expect(most_popular_boy_names_2014).not_to include("Jack")
    end

    it "changes the length of the array" do
      expect(most_popular_boy_names_2014.count).to eq(9)
    end
  end

  context "delete_at method" do
    most_popular_girl_names_2014 = ["Emma", "Olivia","Sophia","Ava", "Isabella", "Mia", "Charlotte", "Emily", "Abigail", "Harper"]

    it "delete item at the third position in most_popular_girl_names_2014 a" do
      # replace the underscore with your answer
      deleted_name = __
      expect(deleted_name).to eq("Sophia")
    end

    it "changes the composition of the array" do
      expect(most_popular_girl_names_2014).to_not include("Sophia")
    end

    it "changes the length of the array" do
      expect(most_popular_girl_names_2014.count).to eq(9)
    end
  end
end
