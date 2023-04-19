require 'rails_helper'

RSpec.describe 'A feature spec that drives a real browser' do
  it "spins up a browser...", :js do
    visit "/"
  end
end
