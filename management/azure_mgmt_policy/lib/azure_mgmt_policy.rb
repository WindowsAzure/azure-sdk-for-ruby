# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2017-06-01-preview/generated/azure_mgmt_policy'
require '2016-12-01/generated/azure_mgmt_policy'
require '2016-04-01/generated/azure_mgmt_policy'
require '2015-10-01-preview/generated/azure_mgmt_policy'
# Adding require for the profiles
require 'profiles/Profile_2015_10_01_Preview/policy_profile_2015_10_01_preview_profile_client'
require 'profiles/Profile_2016_04_01/policy_profile_2016_04_01_profile_client'
require 'profiles/Profile_2016_12_01/policy_profile_2016_12_01_profile_client'
require 'profiles/Profile_2017_06_01_Preview/policy_profile_2017_06_01_preview_profile_client'
require 'profiles/Profile_Latest/policy_profile_latest_profile_client'
