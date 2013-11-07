require 'spec_helper'

describe 'Dependencies' do
  it 'are installed' do
    expect(package 'build-essential').to be_installed
  end
end

describe 'Ruby system packages' do
  it 'are not installed' do
    expect(package 'ruby').not_to be_installed
  end
end

describe 'Ruby tarball' do
  it 'is unpacked' do
    expect(file '/usr/local/ruby-2.0.0-p247').to be_directory
  end
end

describe 'Ruby executable' do
  it 'exists in /usr/local/bin' do
    expect(file '/usr/local/bin/ruby').to be_file
    expect(file '/usr/local/bin/ruby').to be_executable
  end

  it 'matches the installed version' do
    expect(command 'ruby -v').to return_stdout /^ruby 2.0.0-?p247*/
  end
end
