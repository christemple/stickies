require 'spec_helper'

describe 'Notes API' do

  describe 'GET /:owner/notes' do
    it 'should get all owners notes' do
      Note.create(owner: 'rachel', text: 'hello stickies').save
      Note.create(owner: 'rachel', text: 'nice to meet you').save

      get '/rachel/notes', {}, {'Accept' => 'application/json'}
      expect(response.status).to eq 200
     
      notes_for_rachel = JSON.parse(response.body).map {|note| note["text"] }
      expect(notes_for_rachel).to match_array([
        "hello stickies", "nice to meet you"
      ])
    end

  end

  describe 'POST /:owner/notes' do
    it 'creates a note for owner' do
      note_params = { owner: 'rachel', text: 'how are you?' }.to_json

      headers = { "Accept" => "application/json", "Content-Type" => "application/json" }

      post '/rachel/notes', note_params, headers
      expect(response.status).to eq 201
      expect(Note.where(owner: 'rachel').first.text).to eq 'how are you?'
    end

  end
end
