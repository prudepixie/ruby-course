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

  it "retrieve list of completed task sorted by created date"do
     x_time=Time.now
     Time.stub(:now).and_return(x_time)
     xfiles=TM::Project.new("xfiles")
     cheese=TM::Task.new("stringy", 001, xfiles.id)
     cheese.complete_task

     TM::Project.completed_task_list(cheese)
     #must use created method to retrieve the list
     expect(TM::Project.complete_task_list).to eq([cheese])
  end

  it "retrieve list of incompleted task sorted by priority num"do
     x_time=Time.now
     Time.stub(:now).and_return(x_time)
     xfiles=TM::Project.new("xfiles")
     cheese=TM::Task.new("stringy", 001, xfiles.id)

     TM::Project.incompleted_task_list(cheese)
     expect(TM::Project.incomplete_task_list).to eq([cheese])
   end
end
