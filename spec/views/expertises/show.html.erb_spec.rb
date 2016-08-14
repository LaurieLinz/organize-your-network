require 'rails_helper'

RSpec.describe "expertises/show", type: :view do
  before(:each) do
    @expertise = assign(:expertise, Expertise.create!(
      :discipline => "Discipline"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Discipline/)
  end
end
