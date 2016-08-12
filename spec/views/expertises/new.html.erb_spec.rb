require 'rails_helper'

RSpec.describe "expertises/new", type: :view do
  before(:each) do
    assign(:expertise, Expertise.new(
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders new expertise form" do
    render

    assert_select "form[action=?][method=?]", expertises_path, "post" do

      assert_select "input#expertise_first_name[name=?]", "expertise[first_name]"

      assert_select "input#expertise_last_name[name=?]", "expertise[last_name]"
    end
  end
end
