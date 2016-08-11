require 'rails_helper'

RSpec.describe "designs/index", type: :view do
  before(:each) do
    assign(:designs, [
      Design.create!(
        :name => "Name",
        :json => "MyText",
        :updated_by => 1
      ),
      Design.create!(
        :name => "Name",
        :json => "MyText",
        :updated_by => 1
      )
    ])
  end

  it "renders a list of designs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
