require 'rails_helper'

RSpec.describe 'EventsController' do
  describe 'GET to #index' do
    subject { page }

    before do
      visit root_path
    end

    it { should have_content('ConScheduler') }
    it { should have_content('Your schedule awaits') }
  end
end
