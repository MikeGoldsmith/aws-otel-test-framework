# ------------------------------------------------------------------------
# Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License").
# You may not use this file except in compliance with the License.
# A copy of the License is located at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# or in the "license" file accompanying this file. This file is distributed
# on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
# express or implied. See the License for the specific language governing
# permissions and limitations under the License.
# -------------------------------------------------------------------------

## right now there's no good way to share variables across modules,
## so we have to define some of the common vars like region, otconfig_path in each module

variable "package_s3_bucket" {
  default = "aws-otel-collector-test"
}

variable "testing_ami" {
  default = "amazonlinux2"
}

variable "soaking_compose_file" {
  default = ""
}

######################
# Soaking related
######################
# data type will be emitted. Possible values: metric or trace
variable "soaking_data_mode" {
  default = "metric"
}

# data points were emitted per second
variable "soaking_data_rate" {
  default = 100
}

# data model type. possible values: otlp, xray, etc
variable "soaking_data_type" {
  default = "otlp"
}

variable "skip_validation" {
  default = false
}

variable "mock_endpoint" {
  default = "mocked-server/put-data"
}

variable "install_cwagent" {
  default = false
}
