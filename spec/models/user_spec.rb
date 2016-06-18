require 'rails_helper'

RSpec.describe User do
  it { should have_db_column(:created_at).
      of_type(:datetime) }

  it { should have_db_column(:updated_at).
      of_type(:datetime) }

  it { should have_db_column(:email).
      of_type(:string).
      with_options(null: false) }

  it { should have_db_index(:email).unique(true) }

  it 'normalizes email addresses' do
    user = User.create(email: 'JOEUSER@domain.com')

    user.reload

    expect(user.email).to eql('joeuser@domain.com')
  end
end