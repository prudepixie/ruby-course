require 'spec_helper'

describe 'Task' do
  it "exists" do
    expect(TM::Task).to be_a(Class)
  end
  it "creates new task with project id, description, and priority number" do
    xfiles=TM::Project.new("xfiles")
    cheese=TM::Task.new("stringy", 001, xfiles.id)

    expect(cheese.description).to eq("stringy")
    expect(cheese.project_id).to eq(3)

  end
end
