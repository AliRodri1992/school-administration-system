require 'rails_helper'

RSpec.describe "Apis", type: :request do
  describe "GET Language" do
    it "is equal to another string of the same value" do
      "this string".should eq("this string")
    end
  end
end
