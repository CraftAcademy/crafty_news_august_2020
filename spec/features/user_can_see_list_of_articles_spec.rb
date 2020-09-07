feature 'List articles on index page' do
  context 'with articles in db' do
    before do
      create(:article, title: 'We are starting with Rails!')
      create(:article, title: 'Mac for the win!')
      visit root_path
    end

    it 'displays first article title' do
      expect(page).to have_content 'We are starting with Rails!'
    end

    it 'displays second article title' do
      expect(page).to have_content 'Mac for the win!'
    end
  end
end