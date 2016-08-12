require 'rails_helper'

RSpec.describe "expertises/new", type: :view do
  before(:each) do
    assign(:expertise, Expertise.new())
  end

  it "renders new expertise form" do
    render

    assert_select "form[action=?][method=?]", expertises_path, "post" do
    end
  end
end
