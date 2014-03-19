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
     id=(0...8).map{(65+rand(26)).chr}.join

     expect(TM::Project.id).not_to be_empty
  end


end
