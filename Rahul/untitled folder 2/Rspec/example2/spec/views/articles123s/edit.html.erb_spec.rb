require 'rails_helper'

RSpec.describe "articles123s/edit", type: :view do
  before(:each) do
    @articles123 = assign(:articles123, Articles123.create!(
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit articles123 form" do
    render

    assert_select "form[action=?][method=?]", articles123_path(@articles123), "post" do

      assert_select "input#articles123_title[name=?]", "articles123[title]"

      assert_select "textarea#articles123_body[name=?]", "articles123[body]"
    end
  end
end
