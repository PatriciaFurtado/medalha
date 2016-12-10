require 'rails_helper'

RSpec.describe "atividades/show", type: :view do
  before(:each) do
    @atividade = assign(:atividade, Atividade.create!(
      :titulo => "Titulo",
      :descricao => "Descricao"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/Descricao/)
  end
end
