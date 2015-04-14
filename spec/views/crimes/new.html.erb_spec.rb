require 'rails_helper'

RSpec.describe "crimes/new", :type => :view do
  before(:each) do
    assign(:crime, Crime.new())
  end

  it "renders new crime form" do
    render

    assert_select "form[action=?][method=?]", crimes_path, "post" do
    end
  end
end
