require 'rails_helper'

RSpec.describe "objetos/new", :type => :view do
  before(:each) do
    assign(:objeto, Objeto.new())
  end

  it "renders new objeto form" do
    render

    assert_select "form[action=?][method=?]", objetos_path, "post" do
    end
  end
end
