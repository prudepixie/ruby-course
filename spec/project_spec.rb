require 'spec_helper'

describe 'Project' do

  it "exists" do
    expect(TM::Project).to be_a(Class)
  end
  it "can create a new project with a name" do
    project1=TM::Project.new("newtask")
    expect(project1.name).to eq("newtask")
  end
  it "can automatically create and assign unique id" do
    project1=TM::Project.new("newtask")
    id=(0...8).map{(65+rand(26)).chr}.join

    expect(TM::Project.id).not_to be_empty
  end
  xit "can retrieve a list of all completed task by creation date" do
    project1=TM::Project.new("newtask")



  end


end
