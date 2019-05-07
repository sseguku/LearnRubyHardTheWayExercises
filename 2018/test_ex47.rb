require "rack/utils"
require "rspec/its"

RSpec.describe 'Album Model' do 
  subject(:album) { Album.create!( title: 'Led Zeppelin IV', performer: 'Led Zeppelin', cost: 10 ) }
  its(:last_purchased_at) { should be_nil }
  its(:last_purchased_by) { should be_nil }

  context 'without title' do
       it 'should raise an error' do
          expect { Album.create! }.to raise_error ActiveRecord::RecordInvalid
       end
  end
end

RSpec.describe 'User Model' do 
  context 'given a name' do4
    subject(:user) { User.create!(name: 'Phil') }
    its(:total_purchases) { should eq 0 }
  end
  context 'without a name' do
    it 'should raise an error' do
      expect { User.create! }.to raise_error ActiveRecord::RecordInvalid
    end
  end
end

RSpec.describe 'Purchase Model' do 
  let(:album) { Album.create!( title: 'Led Zeppelin IV', performer: 'Led Zeppelin', cost: 10 ) }
  let(:user) { User.create!(name: 'Nathan') }
  subject(:purchase) { Purchase.create!(album: album, user: user) }
  its(:created_at) { should_not be_nil }
  #these two must not be nil
  
end