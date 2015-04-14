require 'rails_helper'

RSpec.describe "crimes/show", :type => :view do
  before(:each) do
    @crime = assign(:crime, Crime.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
