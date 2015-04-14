#require 'rails_helper'

#RSpec.describe "locais/index", :type => :view do
#  before(:each) do
#    assign(:locais, [
#      Local.create!(
#        :latitude => 1.5,
#        :longitude => 1.5
#      ),
#      Local.create!(
#        :latitude => 1.5,
#        :longitude => 1.5
#      )
#    ])
#  end

#  it "renders a list of locais" do
#    render
#    assert_select "tr>td", :text => 1.5.to_s, :count => 2
#    assert_select "tr>td", :text => 1.5.to_s, :count => 2
#  end
#end

require 'rails_helper'

RSpec.describe "locais/index", :type => :view do
  before(:each) do
    assign(:locais, [
      Local.create!(),
      Local.create!()
    ])
  end

  it "renders a list of locais" do
    render
  end
end
