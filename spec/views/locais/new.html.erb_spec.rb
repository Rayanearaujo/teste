require 'rails_helper'

RSpec.describe "locais/new", :type => :view do
  before(:each) do
    assign(:local, Local.new(
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders new local form" do
    render

    assert_select "form[action=?][method=?]", locais_path, "post" do

      assert_select "input#local_latitude[name=?]", "local[latitude]"

      assert_select "input#local_longitude[name=?]", "local[longitude]"
    end
  end
end
