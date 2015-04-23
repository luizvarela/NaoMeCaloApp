require 'rails_helper'

RSpec.describe Delatation, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:longitude) }
    it { is_expected.to validate_presence_of(:latitude) }
    it { is_expected.to validate_presence_of(:category) }
    it { is_expected.to validate_presence_of(:address) }
    it { is_expected.to validate_presence_of(:date) }
    it { is_expected.to validate_presence_of(:shift) }
    it { is_expected.to validate_presence_of(:description) }
  end
end