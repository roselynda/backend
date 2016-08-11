require 'rails_helper'

RSpec.describe "designs/edit", type: :view do
  before(:each) do
    @design = assign(:design, Design.create!(
      :name => "MyString",
      :json => "MyText",
      :updated_by => 1
    ))
  end

  it "renders the edit design form" do
    render

    assert_select "form[action=?][method=?]", design_path(@design), "post" do

      assert_select "input#design_name[name=?]", "design[name]"

      assert_select "textarea#design_json[name=?]", "design[json]"

      assert_select "input#design_updated_by[name=?]", "design[updated_by]"
    end
  end
end
