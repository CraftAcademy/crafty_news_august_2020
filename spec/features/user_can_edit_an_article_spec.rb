feature 'Visitor can edit articles' do
  let(:sender) {  create(:article, email: 'user1@mail.com') }
  let(:receiver1) { create(:article) }
  let(:receiver2) { create(:article) }
  
  before do
    visit article_path(test_article)
    click_on 'Edit This Article'
    fill_in 'Title', with: 'This is a much better title'
    click_on 'Update Article'
  end

  describe 'Visitor can edit an article' do
    it 'and it displays a success message' do
      expect(page).to have_content 'The article was successfully updated'
    end

    it 'and displays the updated article' do
      expect(page).to have_content 'This is a much better title'
    end
  end
end