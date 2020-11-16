require 'rails_helper'

RSpec.describe Todo, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let(:create_todo) { create(:todo) }

  describe 'General validations' do
    # Association test
    # ensure Todo model has a 1:m relationship with the Item model
    it { should have_many(:items).dependent(:destroy) }
    # Validation tests
    # ensure columns title and created_by are present before saving
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:created_by) }
  end

  describe 'when record is created' do
    it 'increase by one Todos table' do
      expect { create_todo }.to change { Todo.count }.by(1)
    end

    it 'changes data base size' do
      expect { create_todo }.to change(Todo, :count)
    end
  end

  describe 'when record is updated' do
    it 'changes in data base' do
      create_todo.update(title: "baz")
      expect(create_todo.title).to eq('baz')
    end
  end

  describe 'when record is deleted' do
    let!(:create_todo_two) { create(:todo) }

    it 'removed in data base' do
      expect { create_todo_two.destroy }.to change { Todo.count }.by(-1)
    end
  end
end
