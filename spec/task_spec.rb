require 'spec_helper'

describe 'Task' do
  it "exists" do
    expect(TM::Task).to be_a(Class)
  end
  xit "creates new task with project id, description, and priority number" do
    xfiles=TM::Project.new("xfiles")
    cheese=TM::Task.new("stringy", 001, TM::Project.id)

    expect(cheese.description).to eq("stringy")
    expect(cheese.project_id).to eq(TM::Project.id)

  end
end
