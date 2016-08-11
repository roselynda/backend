require 'rails_helper'

RSpec.describe "designs/new", type: :view do
  before(:each) do
    assign(:design, Design.new(
      :name => "MyString",
      :json => "MyText",
      :updated_by => 1
    ))
  end

  it "renders new design form" do
    render

    assert_select "form[action=?][method=?]", designs_path, "post" do

      assert_select "input#design_name[name=?]", "design[name]"

      assert_select "textarea#design_json[name=?]", "design[json]"

      assert_select "input#design_updated_by[name=?]", "design[updated_by]"
    end
  end
end
