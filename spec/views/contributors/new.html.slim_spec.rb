require 'rails_helper'

RSpec.describe "contributors/new", type: :view do
  before(:each) do
    assign(:contributor, Contributor.new(
      :user_id => 1,
      :design_id => 1,
      :owner => false
    ))
  end

  it "renders new contributor form" do
    render

    assert_select "form[action=?][method=?]", contributors_path, "post" do

      assert_select "input#contributor_user_id[name=?]", "contributor[user_id]"

      assert_select "input#contributor_design_id[name=?]", "contributor[design_id]"

      assert_select "input#contributor_owner[name=?]", "contributor[owner]"
    end
  end
end
