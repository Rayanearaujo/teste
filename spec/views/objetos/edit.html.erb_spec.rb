require 'rails_helper'

RSpec.describe "objetos/edit", :type => :view do
  before(:each) do
    @objeto = assign(:objeto, Objeto.create!())
  end

  it "renders the edit objeto form" do
    render

    assert_select "form[action=?][method=?]", objeto_path(@objeto), "post" do
    end
  end
end
