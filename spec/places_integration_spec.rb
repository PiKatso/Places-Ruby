require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)
  before() do
    Places.clear_all()
  end

describe("the page displays list", {:type => :feature}) do
  it("processes the user input and returns correct message for successfully adding place") do
    visit("/")
    fill_in("destination", :with => "Aruba")
    click_button("Add me")
    expect(page).to have_content("Places you've been Congrats!! Your place has been added succesfully!! back")
  end
end
