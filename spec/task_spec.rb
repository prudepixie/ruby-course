require 'spec_helper'

describe 'Task' do
  it "exists" do
    expect(TM::Task).to be_a(Class)
  end

 it "can create new task with project id, description, and priority number" do
    project=TM::Project.new("hello")
    task1=TM::Task.new("roadtrip","001", TM::Project.id)

    expect(task1.description).to eq("roadtrip")
    expect(task1.project_id).to eq(TM::Project.id)
  end

  it "records the time when the task was created" do
    current_time=Time.now
    Time.stub(:now).and_return(current_time)

    project = TM::Project.new("hello")
    task1 = TM::Task.new("roadtrip","001", TM::Project.id)

    expect(task1.created_time).to eq(current_time)
  end

  it "records the time when the task was completed" do
    completed_time=Time.parse("2014-03-30 14:00:00")
    Time.stub(:now).and_return(completed_time)

    project=TM::Project.new("hello")
    task1=TM::Task.new("roadtrip","001", TM::Project.id)

    expect(task1.complete_time).to eq(completed_time)
  end

  xit "can mark task complete, specify by id" do
  end

end
