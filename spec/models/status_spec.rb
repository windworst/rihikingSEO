require 'spec_helper'

describe Status do
  before do
    @status = Status.find(10)
  end

  subject { @status }

  it { should respond_to(:id) }
  it { should respond_to(:name) }

end
