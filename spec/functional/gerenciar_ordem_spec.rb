require 'spec_helper'
require 'rails_helper'

feature 'gerenciar ordem' do
	before(:each) do
		@cliente = create(:cliente, nome: "Arnaldo")
		@empregado = create(:empregado, nome: "Jose")
	end
	let(:dados) do {
		equipamento: "notebook",
		defeito: "tela quebrada",
		marca: "positivo",
		descricao: "apresenta faixa na tela",
		status: "em atendimento",
		valor: "200",
		cliente: "Arnaldo",
		empregado: "Jose",		
		}

	end
	scenario 'incluir ordem' do #, :js => true do
		visit new_ordem_path
		preencher(dados)
		click_button 'Salvar'
		verificar(dados)
	end
	scenario 'alterar ordem' do #, :js => true do
		ordem = FactoryGirl.create(:ordem, cliente: @nome, empregado: @nome)
		visit edit_ordem_path(ordem)
		preencher(dados)
		click_button 'Salvar'
		verificar(dados)
	end
	scenario 'excluir ordem' do #, :js => true do
		ordem = FactoryGirl.create(:ordem, cliente: @nome, empregado: @nome)
		visit ordems_path
		click_link('Excluir', match: :first)
	end
	def preencher(dados)
		fill_in 'Equipamento', with: dados[:equipamento]
		fill_in 'Defeito', with: dados[:defeito]
		fill_in 'Marca', with: dados[:marca]		
		fill_in 'Descricao', with: dados[:descricao]
		fill_in 'Status', with: dados[:status]		
		fill_in 'Valor', with: dados[:valor]
		select dados[:nome], from: "Cliente"
		select dados[:nome], from: "Empregado"
	end
	def verificar(dados)
		page.should have_content "Nome: #{dados[:nome]}"
		page.should have_content "Telefone: #{dados[:telefone]}"
		page.should have_content "Endereco: #{dados[:endereco]}"
		page.should have_content "Dataadm: #{dados[:dataadm]}"
		page.should have_content "Cpf: #{dados[:cpf]}"
		page.should have_content "Rg: #{dados[:rg]}"
		page.should have_content "Cliente: #{dados[:nome]}"
		page.should have_content "Empregado: #{dados[:nome]}"
	end
end