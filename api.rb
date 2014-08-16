require 'sinatra'
require 'pg'
require 'active_record'
require 'json'
require './lib/ticket.rb'
require './lib/project.rb'

# Get all the tickets
get '/tickets' do
  "All tickets"
end

get '/tickets/:id' do
  "Ticket with id: #{params[:id]}"
end