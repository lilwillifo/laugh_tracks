describe 'User visits comedians page' do
  it 'sees all merchants' do
    Comedian.create(name: 'Amy Poehler', age: 36)
    Comedian.create(name: 'Tina Fey', age: 38)
    visit '/comedians'

    expect(page).to have_content('Amy Poehler')
    expect(page).to have_content(36)
    expect(page).to have_content('Tina Fey')
    expect(page).to have_content(38)
  end
end
