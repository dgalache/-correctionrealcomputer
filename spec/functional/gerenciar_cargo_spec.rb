require 'rails_helper'
	feature 'gerencia cargo' do
		scenario 'incluir cargo' do # , :js => true do
			visit new_cargo_path
			preencher_e_verficar_cargo
		end
		scenario 'alterar cargo' do # , :js => true do
			cargo = FactoryGirl.create(:cargo)
			visit edit_cargo_path(cargo)
			preencher_e_verficar_cargo
		end
		scenario 'excluir cargo' do #, :javascript => true do
			cargo = FactoryGirl.create(:cargo)
			visit cargos_path
		
			click_link('Excluir', match: :first)
		end
		def preencher_e_verficar_cargo
			fill_in 'Tipo', :with => "Redes"
			fill_in 'Salario', :with => "2000"
			fill_in 'Ch', :with => "30"
			
			click_button 'Salvar'
			expect(page).to have_content 'Tipo: Redes'
			expect(page).to have_content 'Salario: 2000'
			expect(page).to have_content 'Ch: 30'
			
		end
end
