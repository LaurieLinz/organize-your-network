require 'rails_helper'

RSpec.describe "expertises/show", type: :view do
  before(:each) do
    @expertise = assign(:expertise, Expertise.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
