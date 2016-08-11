require 'rails_helper'

RSpec.describe "contributors/edit", type: :view do
  before(:each) do
    @contributor = assign(:contributor, Contributor.create!(
      :user_id => 1,
      :design_id => 1,
      :owner => false
    ))
  end

  it "renders the edit contributor form" do
    render

    assert_select "form[action=?][method=?]", contributor_path(@contributor), "post" do

      assert_select "input#contributor_user_id[name=?]", "contributor[user_id]"

      assert_select "input#contributor_design_id[name=?]", "contributor[design_id]"

      assert_select "input#contributor_owner[name=?]", "contributor[owner]"
    end
  end
end
