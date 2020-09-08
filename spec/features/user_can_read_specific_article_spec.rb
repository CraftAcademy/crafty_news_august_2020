feature 'User can read specific article' do
  before do
    create(:article, title: 'Ubuntu is very tricky', content: 'We are lucky to have Oliver and Adi!')
    visit root_path
    click_on 'Ubuntu is very tricky'
  end

  context 'Article displays' do
    it 'title' do
      expect(page).to have_content 'Ubuntu is very tricky'
    end

    it 'content' do
      expect(page).to have_content 'We are lucky to have Oliver and Adi'
    end
  end
end