require 'rails_helper'

RSpec.describe "medalhas/show", type: :view do
  before(:each) do
    @medalha = assign(:medalha, Medalha.create!(
      :titulo => "Titulo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Titulo/)
  end
end
