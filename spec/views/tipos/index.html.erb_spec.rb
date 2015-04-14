require 'rails_helper'

RSpec.describe "tipos/index", :type => :view do
  before(:each) do
    assign(:tipos, [
      Tipo.create!(),
      Tipo.create!()
    ])
  end

  it "renders a list of tipos" do
    render
  end
end
