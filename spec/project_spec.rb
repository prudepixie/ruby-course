require 'spec_helper'

describe 'Project' do

  it "exists" do
    expect(TM::Project).to be_a(Class)
  end

  it "can create new project with name" do
    xfiles=TM::Project.new("xfiles")
    expect(xfiles.name).to eq("xfiles")
  end

  it "automatically generate and assign new project with unique id" do
     xfiles=TM::Project.new("xfiles")
     expect(xfiles.id).to eq(1)

     yfiles=TM::Project.new("yfiles")
     expect(xfiles.id).to eq(2)
  end


end
