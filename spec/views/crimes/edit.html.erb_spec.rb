require 'rails_helper'

RSpec.describe "crimes/edit", :type => :view do
  before(:each) do
    @crime = assign(:crime, Crime.create!())
  end

  it "renders the edit crime form" do
    render

    assert_select "form[action=?][method=?]", crime_path(@crime), "post" do
    end
  end
end
