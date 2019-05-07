# Here's some new strange stuff, remember type it exactly.
=begin
days = "Mon Tue Wed Thu Fri Sat Sun"
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

puts "Here are the days: #{days}"
puts "Here are the months: #{months}"

puts %q{
There's something going on here.
With this weird quote
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
}
=end

=begin
require "rack/utils"
require "rspec/its"

RSpec.describe 'Album Model' do 
  subject(:album) { Album.create!( title: 'Led Zeppelin IV', performer: 'Led Zeppelin', cost: 10 ) }
  its(:last_purchased_at) { should be_nil }
  its(:last_purchased_by) { should be_nil }
end

RSpec.describe 'User Model' do 
  context 'given a name' do
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

=end

require "rack/utils"
require "rspec/its"

RSpec.describe 'Album Model' do 
	
	context 'Album Creation' do
	  subject(:album) { Album.create!( title: 'Led Zeppelin IV', performer: 'Led Zeppelin', cost: 10 ) }
	  its(:last_purchased_at) { should be_nil }
	  its(:last_purchased_by) { should be_nil }
	end

	context 'without a title or performer or cost' do
      
		it 'should raise an error' do
			 expect { Album.create! }.to raise_error ActiveRecord::RecordInvalid
    	end
	end
end

RSpec.describe 'User Model' do 
  context 'given a name' do
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

RSpec.describe 'AlbumsController' do
    #ActiveRecord::RecordInvalid
  
  context '#create' do
  	
  	it 'should be a successful response' do
  		#missing
  	end
  	context 'missing data required' do
  		it 'should require title' do
  			#missing
  		end
  		it 'should require performer' do
  			#missing
  		end
  		it 'should require cost' do
  			#missing
  		end  		
  	end
  	context 'sending invalid data' do
      	it 'should require cost to be positive integer' do
      	
      	end 
      
  	end

  end
  context '#update' do

  	it 'should be a successful response' do
  	end
  	context 'trying to unset required data' do
  		it 'should require title' do
  		end
  		it 'should require performer' do
  		end
  		it 'should require cost' do
  		end
  	end

  	context 'trying to update purchase info' do
  		it 'update last_purchased_at' do
  		end
  		it 'update last_purchased_by' do
  		end
  	end

  	context 'sending invalid data' do
  		it 'should require cost to be positive' do
  		end
  	end

  end
end

RSpec.describe 'PurchasesController' do 

	context 'create' do
			it 'should be a successful response' do
		end

		context 'with valid data'
			it 'should increment the users total purchases' do

			end

			it 'should set the last_purchased_at date on the album'
			end

			it 'should set the last_purchased_by string on the album'
			
			end
			
		end
		context 'missing required data'
			it 'should require album_id' do

			end

			it 'should require user_id'
			end

			
		end
	end


end