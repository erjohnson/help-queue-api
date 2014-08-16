require 'spec_helper'

describe 'Ticket' do
  def app
    Sinatra::Application
  end
  
  it 'returns all tickets' do
    get '/tickets'
    expect(last_response).to be_ok
    expect(last_response.status).to eq 200
    expect(last_response.body).to eq 'All tickets'
  end
end