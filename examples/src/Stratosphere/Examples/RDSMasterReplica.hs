module Stratosphere.Examples.RDSMasterReplica (template) where

import Prelude
import Stratosphere

import qualified Stratosphere.RDS.DBInstance       as RDS
import qualified Stratosphere.RDS.DBParameterGroup as RDS

template :: Template
template =
  mkTemplate
  [ rdsParamGroup & set @"DeletionPolicy" Retain
  , rdsMaster     & set @"DeletionPolicy" Retain
  , rdsReplica    & set @"DeletionPolicy" Retain
  ]
  & set @"Description" "Stack for and RDS master and replica"
  & set @"Parameters"
      [ mkParameter "RdsMasterPassword" "String"
      , mkParameter "RdsSubnetGroup"    "String"
      , mkParameter "VpcId"             "String"
      ]

rdsMaster :: Resource
rdsMaster
  = resource "RDSMaster"
  $ RDS.mkDBInstance
  & set @"DBInstanceClass"            "db.t2.micro"
  & set @"DBName"                     "db-master"
  & set @"StorageType"                "gp2"
  & set @"AllocatedStorage"           "20"
  & set @"DBParameterGroupName"       (toRef rdsParamGroup)
  & set @"Engine"                     "postgres"
  & set @"EngineVersion"              "9.3.10"
  & set @"MasterUsername"             "postgres"
  & set @"MasterUserPassword"         (Ref "RdsMasterPassword")
  & set @"DBName"                     "the_database"
  & set @"PreferredMaintenanceWindow" "Sun:01:00-Sun:02:00"
  & set @"BackupRetentionPeriod"      (Literal 30)
  & set @"PreferredBackupWindow"      ("08:00-09:00")
  & set @"Port"                       "5432"
  & set @"Tags"                       [mkTag "Role" "rds-master"]

rdsReplica :: Resource
rdsReplica
  = resource "RDSReplica"
  $ RDS.mkDBInstance
  & set @"DBInstanceClass"            "db.t2.micro"
  & set @"DBName"                     "db-standby"
  & set @"SourceDBInstanceIdentifier" (toRef rdsMaster)
  & set @"StorageType"                "gp2"
  & set @"Tags"                       [mkTag "Role" "rds-standby"]

rdsParamGroup :: Resource
rdsParamGroup
  = resource "RDSParameterGroup"
  $ RDS.mkDBParameterGroup "Parameter group for RDS instances" "postgres9.3"
  & set @"Parameters"
      [ ("checkpoint_segments",         "32")
      , ("effective_cache_size",        "5584716")
      , ("hot_standby_feedback",        "1")
      , ("log_connections",             "1")
      , ("log_disconnections",          "1")
      , ("log_min_duration_statement",  "0")
      , ("maintenance_work_mem",        "2000000")
      , ("max_connections",             "100")
      , ("max_standby_archive_delay",   "3600000")
      , ("max_standby_streaming_delay", "3600000")
      , ("wal_buffers",                 "2000")
      , ("work_mem",                    "400000")
      ]
