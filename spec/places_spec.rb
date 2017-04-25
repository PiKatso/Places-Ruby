require "places"
require "rspec"
require "pry"

describe 'Places#destination' do

  it ("takes input and adds place to list") do
    my_places = Places.new("Mexico")
    expect(my_places.destination()).to(eq("Mexico"))
  end

  describe(".places_list") do
    it("is empty at first, but will hold all instances of place") do
      expect(Places.places_list()).to(eq([]))
    end
  end

  describe(".places_save") do
    it("is adding place to the array of saved places") do
      my_places = Places.new("Mexico")
      my_places.places_save()
      expect(Places.places_list()).to(eq(["Mexico"]))
    end
  end

  describe(".clear_all") do
    it("empties array when called") do
      expect(Places.clear_all()).to(eq([]))
    end
  end
end
