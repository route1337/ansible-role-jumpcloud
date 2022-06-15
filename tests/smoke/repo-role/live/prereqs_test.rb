#
# Project:: Ansible Role - JumpCloud
#
# Copyright 2020, Route 1337 LLC, All Rights Reserved.
#
# Maintainers:
# - Matthew Ahrenstein: matthew@route1337.com
#
# See LICENSE
#

# Prereqs tests

if ['ubuntu', 'centos'].include?(os[:name])

  # Verify curl is installed
  describe package('curl') do
    it { should be_installed }
  end
else
  # Do nothing
end
