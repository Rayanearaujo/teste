require 'rails_helper'

RSpec.describe "vitimas/show", :type => :view do
  before(:each) do
    @vitima = assign(:vitima, Vitima.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
