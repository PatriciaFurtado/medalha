require 'rails_helper'

RSpec.describe "atividades/index", type: :view do
  before(:each) do
    assign(:atividades, [
      Atividade.create!(
        :titulo => "Titulo",
        :descricao => "Descricao"
      ),
      Atividade.create!(
        :titulo => "Titulo",
        :descricao => "Descricao"
      )
    ])
  end

  it "renders a list of atividades" do
    render
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
  end
end
