require 'spec_helper'

describe 'Ticket' do
  def app
    Sinatra::Application
  end
  
  describe 'GET /tickets' do
    it 'returns all tickets' do
      get '/tickets'
      expect(last_response).to be_ok
      expect(last_response.status).to eq 200
      expect(last_response.body).to eq 'All tickets'
    end
  end
  
  describe 'GET /ticket/:id' do
    it 'returns a ticket by id' do
      get '/tickets/1'
      expect(last_response).to be_ok
      expect(last_response.status).to eq 200
      expect(last_response.body).to eq 'Ticket with id: 1'
    end
  end
end