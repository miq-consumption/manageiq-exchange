require 'rails_helper'

RSpec.describe SpinCandidate, type: :model do
  let(:spin_candidate) { FactoryBot.build(:spin_candidate) }
  it 'has a valid factory' do
    spin_candidate.valid?
    expect(spin_candidate).to be_valid
  end

  it 'is not valid without a user' do
    spin_candidate.user = nil
    spin_candidate.valid?
    expect(spin_candidate.errors.details[:user]).to include(error: :blank)
  end

  it 'is not valid without a full name' do
    spin_candidate.full_name = nil
    spin_candidate.valid?
    expect(spin_candidate.errors.details[:full_name]).to include(error: :blank)
  end

  it 'is not valid without a validation_log' do
    spin_candidate.validation_log = nil
    spin_candidate.valid?
    expect(spin_candidate.errors.details[:validation_log]).to include(error: :blank)
  end
end
