require 'rails_helper'

RSpec.describe "contributors/show", type: :view do
  before(:each) do
    @contributor = assign(:contributor, Contributor.create!(
      :user_id => 1,
      :design_id => 2,
      :owner => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
  end
end
