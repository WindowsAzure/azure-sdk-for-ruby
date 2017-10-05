# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require '2015-02-01-preview/generated/azure_mgmt_logic'
require '2016-06-01/generated/azure_mgmt_logic'
# Adding require for the profiles
require 'profiles/Profile_2015_02_01_Preview/logic_profile_2015_02_01_preview_profile_client'
require 'profiles/Profile_2016_06_01/logic_profile_2016_06_01_profile_client'
require 'profiles/Profile_Latest/logic_profile_latest_profile_client'
