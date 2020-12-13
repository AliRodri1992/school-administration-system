require 'rails_helper'

RSpec.describe "home/index.html.slim", type: :view do
  it "displays the given text" do

    render :plain => "This is directly rendered"

    expect(rendered).to match /directly rendered/
  end
end
