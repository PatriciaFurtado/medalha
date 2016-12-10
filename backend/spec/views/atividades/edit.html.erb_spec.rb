require 'rails_helper'

RSpec.describe "atividades/edit", type: :view do
  before(:each) do
    @atividade = assign(:atividade, Atividade.create!(
      :titulo => "MyString",
      :descricao => "MyString"
    ))
  end

  it "renders the edit atividade form" do
    render

    assert_select "form[action=?][method=?]", atividade_path(@atividade), "post" do

      assert_select "input#atividade_titulo[name=?]", "atividade[titulo]"

      assert_select "input#atividade_descricao[name=?]", "atividade[descricao]"
    end
  end
end
