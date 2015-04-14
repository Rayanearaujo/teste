require 'rails_helper'

RSpec.describe "vitimas/edit", :type => :view do
  before(:each) do
    @vitima = assign(:vitima, Vitima.create!())
  end

  it "renders the edit vitima form" do
    render

    assert_select "form[action=?][method=?]", vitima_path(@vitima), "post" do
    end
  end
end
