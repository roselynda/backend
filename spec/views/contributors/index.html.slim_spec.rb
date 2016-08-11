require 'rails_helper'

RSpec.describe "contributors/index", type: :view do
  before(:each) do
    assign(:contributors, [
      Contributor.create!(
        :user_id => 1,
        :design_id => 2,
        :owner => false
      ),
      Contributor.create!(
        :user_id => 1,
        :design_id => 2,
        :owner => false
      )
    ])
  end

  it "renders a list of contributors" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
