RPsec.describe 'POST, /api/article/:id', type: :request do
  subject { response }

  before do
    post '/api/article/:id'
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
