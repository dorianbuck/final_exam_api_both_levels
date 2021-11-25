RSpec.describe 'POST, /api/articles/:id/comments', type: :request do
  subject { response }
  let!(:article) { create(:article) }

  before do
    post "/api/articles/#{article.id}/comments",
         params: { article: { body: "Hello I'm a body to a comment" } }
  end

  describe 'when comments are posted successfully' do
    it { is_expected.to have_http_status 201 }

    it 'is expected to return a success message' do
      expect(response_json['message']).to eq 'You have successfully created a comment!'
    end
  end

  describe 'when comments are unsuccesfully not posted' do
    it { is_expected.to have_http_status 422 }

    it 'is expected to return an error message' do
      expect(response_json['error']).to eq 'The comment was unfortunately not created'
    end
  end
end
