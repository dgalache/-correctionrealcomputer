require 'rails_helper'
	feature 'gerencia funcao' do
		scenario 'incluir funcao' do # , :js => true do
			visit new_funcao_path
			preencher_e_verficar_funcao
		end
		scenario 'alterar funcao' do # , :js => true do
			funcao = FactoryGirl.create(:funcao)
			visit edit_funcao_path(funcao)
			preencher_e_verficar_funcao
		end
		scenario 'excluir funcao' do #, :javascript => true do
			funcao = FactoryGirl.create(:funcao)
			visit funcaos_path
		
			click_link('Excluir', match: :first)
		end
		def preencher_e_verficar_funcao
			fill_in 'Tipo', :with => "Redes"
			fill_in 'Salario', :with => "2000"
			fill_in 'Ch', :with => "30"
			
			click_button 'Salvar'
			expect(page).to have_content 'Tipo: Redes'
			expect(page).to have_content 'Salario: 2000'
			expect(page).to have_content 'Ch: 30'
			
		end
end
