require 'spec_helper'

describe UserDecorator do

  describe '#full_name' do
    subject { user.decorate.full_name }

    context 'first_name & last_name are eq null' do
      let(:user) { build(:user, email: 'test@test.com', first_name: nil, last_name: nil) }
      it { is_expected.to eq 'test@test.com' }
    end

    context 'first_name & last_name are present' do
      let(:user) { build(:user, first_name: 'John', last_name: 'Doe', email: 'test@test.com') }
      it { is_expected.to eq 'John Doe' }
    end
  end
end
