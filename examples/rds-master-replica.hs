{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE OverloadedStrings #-}

-- | This example creates a Postgres RDS master and slave with a parameter
-- group. Also note the DeletionPolicy of Retain, which will keep the resource
-- alive if you delete the stack.

module Main where

import Control.Lens
import qualified Data.ByteString.Lazy.Char8 as B

import Stratosphere

main :: IO ()
main = B.putStrLn $ encodeTemplate dbTemplate

dbTemplate :: Template
dbTemplate =
  template
  [ rdsParamGroup & resourceDeletionPolicy ?~ Retain
  , rdsMaster & resourceDeletionPolicy ?~ Retain
  , rdsReplica & resourceDeletionPolicy ?~ Retain
  ]
  & templateDescription ?~ "Stack for and RDS master and replica"
  & templateParameters ?~
  [ parameter "RdsMasterPassword" "String"
  , parameter "RdsSubnetGroup" "String"
  , parameter "VpcId" "String"
  ]

rdsMaster :: Resource
rdsMaster =
  resource "RDSMaster" $
  RDSDBInstanceProperties $
  rdsdbInstance
  "db.t2.micro"
  -- DBInstanceIdentifier is not present in the new schema for some reason
  -- & rdsdbiDBInstanceIdentifier ?~ Literal "db-master"
  & rdsdbiStorageType ?~ "gp2"
  & rdsdbiAllocatedStorage ?~ "20"
  & rdsdbiDBParameterGroupName ?~ toRef rdsParamGroup
  & rdsdbiEngine ?~ "postgres"
  & rdsdbiEngineVersion ?~ "9.3.10"
  & rdsdbiMasterUsername ?~ "postgres"
  & rdsdbiMasterUserPassword ?~ Ref "RdsMasterPassword"
  & rdsdbiDBName ?~ "the_database"
  & rdsdbiPreferredMaintenanceWindow ?~ "Sun:01:00-Sun:02:00"
  & rdsdbiBackupRetentionPeriod ?~ "30"
  & rdsdbiPreferredBackupWindow ?~ "08:00-09:00"
  & rdsdbiPort ?~ "5432"
  & rdsdbiBackupRetentionPeriod ?~ "2"
  & rdsdbiTags ?~
  [ tag "Role" "rds-master"
  ]

rdsReplica :: Resource
rdsReplica =
  resource "RDSReplica" $
  RDSDBInstanceProperties $
  rdsdbInstance
  "db.t2.micro"
  -- DBInstanceIdentifier is not present in the new schema for some reason
  -- & dbiDBInstanceIdentifier ?~ Literal "db-standby"
  & rdsdbiSourceDBInstanceIdentifier ?~ toRef rdsMaster
  & rdsdbiStorageType ?~ "gp2"
  & rdsdbiTags ?~
  [ tag "Role" "rds-standby"
  ]

rdsParamGroup :: Resource
rdsParamGroup =
  resource "RDSParamGroup" $
  RDSDBParameterGroupProperties $
  rdsdbParameterGroup
  "Parameter group for RDS instances"
  "postgres9.3"
  & rdsdbpgParameters ?~
    [ ("checkpoint_segments", "32")
    , ("effective_cache_size", "5584716")
    , ("hot_standby_feedback", "1")
    , ("log_connections", "1")
    , ("log_disconnections", "1")
    , ("log_min_duration_statement", "0")
    , ("maintenance_work_mem", "2000000")
    , ("max_connections", "100")
    , ("max_standby_archive_delay", "3600000")
    , ("max_standby_streaming_delay", "3600000")
    , ("wal_buffers", "2000")
    , ("work_mem", "400000")
    ]
