require 'spec_helper'

describe 'Ticket' do
  def app
    Sinatra::Application
  end
  
  describe 'GET /tickets' do
    it 'returns all tickets' do
      new_ticket = Ticket.create(student: 'Mary', project_id: 1, question: 'Find Ruby object by id')
      get "/tickets"
      expect(last_response).to be_ok
      expect(last_response.status).to eq 200
      expect(last_response.body).to eq [new_ticket].to_json
    end
  end
  
  describe 'GET /ticket/:id' do
    it 'returns a ticket by id' do
      new_ticket = Ticket.create(student: 'Joe')
      get "/tickets/#{new_ticket.id}"
      expect(last_response).to be_ok
      expect(last_response.status).to eq 200
      expect(last_response.body).to eq new_ticket.to_json
    end
  end
end