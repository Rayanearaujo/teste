require 'rails_helper'

RSpec.describe "objetos/show", :type => :view do
  before(:each) do
    @objeto = assign(:objeto, Objeto.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
