require 'rails_helper'

RSpec.describe "articles123s/new", type: :view do
  before(:each) do
    assign(:articles123, Articles123.new(
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders new articles123 form" do
    render

    assert_select "form[action=?][method=?]", articles123s_path, "post" do

      assert_select "input#articles123_title[name=?]", "articles123[title]"

      assert_select "textarea#articles123_body[name=?]", "articles123[body]"
    end
  end
end
