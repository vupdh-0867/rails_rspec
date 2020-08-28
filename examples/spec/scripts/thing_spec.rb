require "./scripts/thing"
require "spec_helper"

RSpec.describe Thing do
  # before do
  #   @thing = Thing.new
  # end

  subject { "a string" }

  it "is instantiated by RSpec" do
    is_expected.to be_a(String)
  end

  # describe "initialized in before(:example)" do
  #   it "has 0 widgets" do
  #     expect(@thing.widgets.count).to eq(0)
  #   end

  #   it "can accept new widgets" do
  #     @thing.widgets << Object.new
  #   end

  #   it "does not share state across examples" do
  #     expect(@thing.widgets.count).to eq(0)
  #   end
  # end
end
