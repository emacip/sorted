#coding: utf-8
require "#{File.dirname(__FILE__)}/../lib/SortedIps"

describe SortedIps do

  # SortedIps.new('201.1.1.2', '1.1.1.1', '34.12.12.12') => ["1.1.1.1", "34.12.12.12", "201.1.1.2"]

  it "should sort ips with first  octec different" do
    ips = SortedIps.new("223.45.23.8", "192.45.1.0", "200.45.16.0")
    ips.should == ["192.45.1.0", "200.45.16.0", "223.45.23.8"]
  end

  it "should sort ips with second octec different" do
    ips = SortedIps.new("223.45.23.8", "223.1.1.0", "200.45.16.0")
    ips.should == ["200.45.16.0", "223.1.1.0", "223.45.23.8"]
  end

  it "should sort ips with third  octec different" do
    ips = SortedIps.new("223.45.23.8", "192.45.1.0", "200.45.16.0")
    ips.should == ["192.45.1.0", "200.45.16.0", "223.45.23.8"]
  end

  it "should sort ips with fourth octec different" do
    ips = SortedIps.new("223.45.23.8", "192.45.1.0", "200.45.16.0")
    ips.should == ["192.45.1.0", "200.45.16.0", "223.45.23.8"]
  end

  it "should order any list of ips" do
    ips = SortedIps.new("123.45.23.35",
                        "187.43.53.93",
                        "123.45.23.8" ,
                        "232.83.43.9" ,
                        "187.43.53.3" ,
                        "123.45.24.1")
    ips.should == ["123.45.23.8", "123.45.23.35", "123.45.24.1", "187.43.53.3", "187.43.53.93", "232.83.43.9"]
  end

end