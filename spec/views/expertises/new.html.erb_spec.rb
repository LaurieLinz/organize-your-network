require 'rails_helper'

RSpec.describe "expertises/new", type: :view do
  before(:each) do
    assign(:expertise, Expertise.new(
      :discipline => "MyString"
    ))
  end

  it "renders new expertise form" do
    render

    assert_select "form[action=?][method=?]", expertises_path, "post" do

      assert_select "input#expertise_discipline[name=?]", "expertise[discipline]"
    end
  end
end
