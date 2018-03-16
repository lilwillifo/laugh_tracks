describe 'User visits comedians page' do
  it 'sees all merchants names and ages' do
    Comedian.create(name: 'Amy Poehler', age: 36)
    Comedian.create(name: 'Tina Fey', age: 38)
    visit '/comedians'

    expect(page).to have_content('Amy Poehler')
    expect(page).to have_content(36)
    expect(page).to have_content('Tina Fey')
    expect(page).to have_content(38)
  end
  it 'sees all comedians specials' do
    Comedian.create(name: 'Amy Poehler', age: 36)
    Special.create(name: 'Parks and Rec', comedian_id: 1)
    Special.create(name: 'SNL', comedian_id: 1)

    visit '/comedians'

    expect(page).to have_content('Parks and Rec')
    expect(page).to have_content('SNL')
  end
end
