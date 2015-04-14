require 'rails_helper'

RSpec.describe "objetos/index", :type => :view do
  before(:each) do
    assign(:objetos, [
      Objeto.create!(),
      Objeto.create!()
    ])
  end

  it "renders a list of objetos" do
    render
  end
end
