require "places"
require "rspec"
require "pry"

describe 'Places#destination' do

  it "takes input and adds place to list" do
    my_places = Places.new("Mexico")
    expect(my_places.destination()).to(eq("Mexico"))
  end
end

#   it "returns false if the word does not have a vowel" do
#     expect(word.is_word?("wrd")).to eq false
#   end

# end
