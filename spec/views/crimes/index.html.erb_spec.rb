require 'rails_helper'

RSpec.describe "crimes/index", :type => :view do
  before(:each) do
    assign(:crimes, [
      Crime.create!(),
      Crime.create!()
    ])
  end

  it "renders a list of crimes" do
    render
  end
end

