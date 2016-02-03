require 'rails_helper'

RSpec.describe "articles123s/show", type: :view do
  before(:each) do
    @articles123 = assign(:articles123, Articles123.create!(
      :title => "Title",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
