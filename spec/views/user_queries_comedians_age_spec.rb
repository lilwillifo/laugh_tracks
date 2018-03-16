describe 'User visits comedians page' do
  describe 'and queries the URL for a specific age' do
    it 'sees all comedians of that age' do
      Comedian.create(name: 'Amy Poehler', age: 36)
      Comedian.create(name: 'Tina Fey', age: 38)
      visit '/comedians?age=38'
      save_and_open_page
      expect(page).to_not have_content('Amy Poehler')
      expect(page).to have_content('Tina Fey')
    end
  end
end
