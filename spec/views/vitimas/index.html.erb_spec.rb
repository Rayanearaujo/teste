require 'rails_helper'

RSpec.describe "vitimas/index", :type => :view do
  before(:each) do
    assign(:vitimas, [
      Vitima.create!(),
      Vitima.create!()
    ])
  end

  it "renders a list of vitimas" do
    render
  end
end
