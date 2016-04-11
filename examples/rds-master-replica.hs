{-# LANGUAGE OverloadedLists #-}
{-# LANGUAGE OverloadedStrings #-}

-- | This example creates a Postgres RDS master and slave with a parameter
-- group.

module Main where

import Control.Lens
import Data.Aeson (object)
import qualified Data.ByteString.Lazy.Char8 as B

import Stratosphere

main :: IO ()
main = B.putStrLn $ encodeTemplate dbTemplate

dbTemplate :: Template
dbTemplate =
  template
  -- Should probably retain db stuff: & deletionPolicy ?~ Retain
  [ rdsParamGroup
  , rdsMaster
  , rdsReplica
  ]
  & description ?~ "Stack for and RDS master and replica"
  & parameters ?~
  [ parameter "RdsMasterPassword" "String"
  , parameter "RdsSubnetGroup" "String"
  , parameter "VpcId" "String"
  ]

rdsMaster :: Resource
rdsMaster =
  resource "RDSMaster" $
  DBInstanceProperties $
  dbInstance
  "db.t2.micro"
  & dbiDBInstanceIdentifier ?~ Literal "db-master"
  & dbiStorageType ?~ "gp2"
  & dbiAllocatedStorage ?~ "20"
  & dbiDBParameterGroupName ?~ toRef rdsParamGroup
  & dbiEngine ?~ "postgres"
  & dbiEngineVersion ?~ "9.3.10"
  & dbiMasterUsername ?~ "postgres"
  & dbiMasterUserPassword ?~ Ref "RdsMasterPassword"
  & dbiDBName ?~ "the_database"
  & dbiPreferredMaintenanceWindow ?~ "Sun:01:00-Sun:02:00"
  & dbiBackupRetentionPeriod ?~ "30"
  & dbiPreferredBackupWindow ?~ "08:00-09:00"
  & dbiPort ?~ "5432"
  & dbiBackupRetentionPeriod ?~ "2"
  & dbiTags ?~
  [ resourceTag "Role" "rds-master"
  ]

rdsReplica :: Resource
rdsReplica =
  resource "RDSReplica" $
  DBInstanceProperties $
  dbInstance
  "db.t2.micro"
  & dbiDBInstanceIdentifier ?~ Literal "db-standby"
  & dbiSourceDBInstanceIdentifier ?~ toRef rdsMaster
  & dbiStorageType ?~ "gp2"
  & dbiTags ?~
  [ resourceTag "Role" "rds-standby"
  ]

rdsParamGroup :: Resource
rdsParamGroup =
  resource "RDSParamGroup" $
  DBParameterGroupProperties $
  dbParameterGroup
  "Parameter group for RDS instances"
  "postgres9.3"
  & dbpgParameters ?~
    object
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
