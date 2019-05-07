require './hello.rb'
describe Hello do 
    it "should say hello name" do
        expect(say_hello("Kisakye")).to eq("Hello, Kisakye!")
    end
end