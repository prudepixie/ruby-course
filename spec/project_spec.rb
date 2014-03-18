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
  it "can retrieve a list of all completed task" do
    project1=TM::Project.new("newtask")
    doll=TM::Task.new("roadtrip","001", 543)


    #project2=TM::Project.new("anothertask")
    #goldy=TM::Task.new("fever","002", 234)
    expect(doll.complete).to eq([543, "yes"])


    expect(project1.completed_tasks(doll)).to eq([543,"yes"])


  end


end
