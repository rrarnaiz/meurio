require 'spec_helper'

describe Campaign do
  it { should validate_presence_of :name }
  it { should validate_presence_of :link }
  it { should validate_presence_of :description_html }
  it { should validate_presence_of :hashtag }
  it { should validate_uniqueness_of :uid }
  it { should belong_to :mobilization }
  it { should belong_to :user }
end
