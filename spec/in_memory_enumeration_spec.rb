require File.dirname(__FILE__) + "/spec_helper"

describe Pivotal::InMemoryEnumeration do  
  class Ime < Pivotal::InMemoryEnumeration 
    self.enumerated_values = [
      Ime.new(1, "One"),
      Ime.new(2, "Two"),
      Ime.new(3, "Three")
      ]
  end
  
  describe 'new' do 
    it "can find by id" do 
      ime = Ime[1]
      ime.id.should == 1
      ime.name.should =="One"
    end

    it "can find by string name" do 
      ime = Ime['One']
      ime.id.should == 1
      ime.name.should =="One"
    end
    
    it "can find by symbol name" do 
      ime = Ime[:One]
      ime.id.should == 1
      ime.name.should =="One"
    end
    
    it "return nil for nil" do 
      Ime[nil].should be_nil
    end
     
    it "will raise if key is worng type" do 
      lambda{Ime[/bad/]}.should raise_error
    end
  end
  
  describe "ids" do 
    it "should use id from quoted_id" do 
      Ime[1].quoted_id.should == 1
    end
    
    it "should use id for param" do 
      Ime[1].to_param.should == "1"     
    end
  end
  
  describe "totals" do 
    
    it "should have count" do 
      Ime.count.should == 3
    end
    
    it "should have them all" do 
      Ime.all.should == Ime.enumerated_values
    end
  end
  
  describe "lookups" do 
    it "can look up by id" do 
      Ime.lookup_id(1).name.should == "One"
    end
    
    it "can look up by name" do 
      Ime.lookup_name("One").id.should == 1
    end
  end
end