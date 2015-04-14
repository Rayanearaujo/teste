require 'rails_helper'

RSpec.describe "locais/edit", :type => :view do
  before(:each) do
    @local = assign(:local, Local.create!(
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders the edit local form" do
    render

    assert_select "form[action=?][method=?]", local_path(@local), "post" do

      assert_select "input#local_latitude[name=?]", "local[latitude]"

      assert_select "input#local_longitude[name=?]", "local[longitude]"
    end
  end
end
