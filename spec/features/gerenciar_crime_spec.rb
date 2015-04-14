# coding: utf-8
require 'rails_helper'
feature 'gerenciar Crime' do
	scenario 'incluir Crime' do # , :js => true do
		visit new_crime_path
		preencher_e_verificar_crime
	end
	scenario 'alterar Crime' do #, :js => true do
		crime = FactoryGirl.create(:crime)
		visit edit_crime_path(crime)
		preencher_e_verificar_crime
	end
	scenario 'excluir crime' do #, :javascript => true do
		crime = FactoryGirl.create(:crime)
		visit crimes_path
		click_link 'Excluir'
	end
	def preencher_e_verificar_crime
		#fill_in 'Data', :with => "2015-03-27"
		#fill_in 'Hora', :with => "2015-03-27 09:48:08"
		fill_in 'Descricao', :with => "descricao"
		fill_in 'Valorestimado', :with => "10.65"
		click_button 'Salvar'
		#expect(page).to have_content '2015-03-27'
		#expect(page).to have_content '2015-03-27 09:48:08'
		expect(page).to have_content 'descricao'
		expect(page).to have_content '10.65'
	end
end
