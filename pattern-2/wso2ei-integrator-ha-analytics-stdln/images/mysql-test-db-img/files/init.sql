--
-- Copyright 2017 WSO2 Inc. (http://wso2.org)
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

drop database IF EXISTS WSO2EI_ANALYTICS_EVENT_STORE_DB;
drop database IF EXISTS WSO2EI_ANALYTICS_PROCESSED_DATA_STORE_DB;
drop database IF EXISTS WSO2EI_METRICS_DB;
drop database IF EXISTS WSO2EI_SHARED_REGISTRY_DB;
drop database IF EXISTS WSO2_USER_DB;

create database WSO2EI_ANALYTICS_EVENT_STORE_DB;
create database WSO2EI_ANALYTICS_PROCESSED_DATA_STORE_DB;
create database WSO2EI_METRICS_DB;
create database WSO2EI_SHARED_REGISTRY_DB;
create database WSO2_USER_DB;

use WSO2EI_SHARED_REGISTRY_DB;
source /home/user-registry.sql;
use WSO2_USER_DB;
source /home/user-registry.sql;
use WSO2EI_METRICS_DB;
source /home/metrics.sql;
