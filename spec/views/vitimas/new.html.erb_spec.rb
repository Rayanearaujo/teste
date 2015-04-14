require 'rails_helper'

RSpec.describe "vitimas/new", :type => :view do
  before(:each) do
    assign(:vitima, Vitima.new())
  end

  it "renders new vitima form" do
    render

    assert_select "form[action=?][method=?]", vitimas_path, "post" do
    end
  end
end
