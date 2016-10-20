require "spec_helper"
require "stock_picker"

describe StockPicker do
	
	it "Test" do
		sp = StockPicker.new
		param = sp.hello
		expect(param).to eq "hello"
	end
end