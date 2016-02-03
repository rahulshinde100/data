require 'rails_helper'

RSpec.describe "articles123s/index", type: :view do
  before(:each) do
    assign(:articles123s, [
      Articles123.create!(
        :title => "Title",
        :body => "MyText"
      ),
      Articles123.create!(
        :title => "Title",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of articles123s" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
