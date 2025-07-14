require 'rails_helper'

RSpec.describe UserMailer do
  describe '#send_welcome_email_to' do
    subject(:welcome_email) { described_class.send_welcome_email_to(user) }

    let(:user) { create(:user, email: 'kevin@example.com') }

    it 'renders the correct sender address' do
      expect(welcome_email.from).to eql(['rgupta.datamonk@gmail.com'])
    end

    it 'renders The Odin Project logo' do
      expect(welcome_email).to have_css("img[src*='logo']")
    end

    it 'renders the correct subject' do
      expect(welcome_email.subject)
        .to eql('Getting started with The Odin Project')
    end

    it 'sends the email to the correct address' do
      expect(welcome_email.to).to eql(['kevin@example.com'])
    end
  end
end
