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

  it "can mark task complete, specify by id" do
    project=TM::Project.new("hello")
    task1=TM::Task.new("roadtrip","001", TM::Project.id)

    expect(task1.task_complete).to eq([TM::Project.id, "no"])

    expect(task1.complete).to eq([TM::Project.id, "yes"])

  end

end
