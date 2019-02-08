describe 'GET /events/id' do
  let!(:organizer) { create(:user) }
  let!(:group) {create(:group, organizer: organizer)}
  let!(:event) { create(:event, group: group) }

  let!(:attendee){create(:user) }

  describe 'GET req for specific event' do
    let(:user_credentials) { organizer.create_new_auth_token }
    let(:headers) { { HTTP_ACCEPT: 'application/json' }.merge!(user_credentials) }
    
    before do
      group.members.create(user: attendee)
      event.attendees.create(user: attendee)
      binding.pry
      get "/events/#{event.id}", headers: headers
    end
    it '' do
      
      binding.pry
      
    end
  end
end