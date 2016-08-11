require 'rails_helper'

RSpec.describe "designs/show", type: :view do
  before(:each) do
    @design = assign(:design, Design.create!(
      :name => "Name",
      :json => "MyText",
      :updated_by => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
