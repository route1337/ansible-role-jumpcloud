#
# Project:: Ansible Role - JumpCloud
#
# Copyright 2020, Route 1337, LLC, All Rights Reserved.
#
# Maintainers:
# - Matthew Ahrenstein: matthew@route1337.com
#
# See LICENSE
#

# Prereqs tests

if ['ubuntu', 'centos'].include?(os[:name])

  # Verify the /opt/jc directory exists
  describe file('/opt/jc') do
    it { should be_directory }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_mode 0700 }
  end

  # Verify the actual JumpCloud agent is installed via looking for the jcagent.conf
  describe file('/opt/jc/jcagent.conf') do
    it { should exist }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    it { should be_mode 0600 }
  end

  # Verify the JumpCloud Agent service is running and enabled
  describe service('jcagent') do
    it { should be_installed }
    it { should be_running }
    it { should be_enabled }
  end

  # Verify install script was removed
  describe file('/tmp/jcinstall.sh') do
    it { should_not exist }
  end
else
  # Do nothing
end
