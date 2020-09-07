feature 'List articles on index page' do
  context 'with articles in db' do
    before do
      visit root_path
    end

    it 'displays first article title' do
      expect(page).to have_content 'We are starting with Rails!'
    end

    it 'displays second article title' do
      expect(page).to have_content 'This is going to be a long week'
    end
  end
end