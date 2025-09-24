module Spec.RDSMasterReplica (testTree) where

import Spec.Golden (runGoldenTest)
import Stratosphere (Template (..))
import qualified Stratosphere
import Stratosphere.RDS.DBInstance (DBInstance (..))
import qualified Stratosphere.RDS.DBInstance
import qualified Stratosphere.RDS.DBParameterGroup
import Stratosphere.Resource (Resource (..))
import Test.Tasty (TestTree)
import Prelude

template :: Stratosphere.Template
template =
  let rdsTemplate =
        Stratosphere.mkTemplate
          [ rdsParamGroup
              { deletionPolicy = Just Stratosphere.Retain
              },
            rdsMaster
              { deletionPolicy = Just Stratosphere.Retain
              },
            rdsReplica
              { deletionPolicy = Just Stratosphere.Retain
              }
          ]
      Stratosphere.Template {..} = rdsTemplate
   in Stratosphere.Template
        { description = Just "Stack for an RDS master and replica",
          parameters =
            Just
              [ Stratosphere.mkParameter "RdsMasterPassword" "String",
                Stratosphere.mkParameter "RdsSubnetGroup" "String",
                Stratosphere.mkParameter "VpcId" "String"
              ],
          ..
        }

rdsReplica :: Stratosphere.Resource
rdsReplica =
  Stratosphere.resource
    "RDSReplica"
    ( Stratosphere.RDS.DBInstance.mkDBInstance
        { dBInstanceClass = Just "db.t2.micro",
          dBName = Just "db-standby",
          sourceDBInstanceIdentifier = Just (Stratosphere.toRef rdsMaster),
          storageType = Just "gp2",
          tags = Just [Stratosphere.mkTag "Role" "rds-standby"]
        }
    )

rdsMaster :: Stratosphere.Resource
rdsMaster =
  Stratosphere.resource
    "RDSMaster"
    ( Stratosphere.RDS.DBInstance.mkDBInstance
        { dBInstanceClass = Just "db.t2.micro",
          dBName = Just "db-master",
          storageType = Just "gp2",
          allocatedStorage = Just "20",
          dBParameterGroupName = Just (Stratosphere.toRef rdsParamGroup),
          engine = Just "postgres",
          engineVersion = Just "9.3.10",
          masterUsername = Just "postgres",
          masterUserPassword = Just (Stratosphere.Ref "RdsMasterPassword"),
          preferredMaintenanceWindow = Just "Sun:01:00-Sun:02:00",
          backupRetentionPeriod = Just (Stratosphere.Literal 20),
          preferredBackupWindow = Just "08:00-09:00",
          port = Just "5432",
          tags = Just [Stratosphere.mkTag "Role" "rds-master"]
        }
    )

rdsParamGroup :: Stratosphere.Resource
rdsParamGroup =
  Stratosphere.resource
    "RDSParameterGroup"
    dbParameterGroup

dbParameterGroup :: Stratosphere.RDS.DBParameterGroup.DBParameterGroup
dbParameterGroup =
  let dbParamGroup =
        Stratosphere.RDS.DBParameterGroup.mkDBParameterGroup
          "Parameter group for RDS instance"
          "postgres9.3"
      Stratosphere.RDS.DBParameterGroup.DBParameterGroup {..} = dbParamGroup
   in Stratosphere.RDS.DBParameterGroup.DBParameterGroup
        { parameters =
            Just
              [ ("checkpoint_segments", "32"),
                ("effective_cache_size", "5584716"),
                ("hot_standby_feedback", "1"),
                ("log_connections", "1"),
                ("log_disconnections", "1"),
                ("log_min_duration_statement", "0"),
                ("maintenance_work_mem", "2000000"),
                ("max_connections", "100"),
                ("max_standby_archive_delay", "3600000"),
                ("max_standby_streaming_delay", "3600000"),
                ("wal_buffers", "2000"),
                ("work_mem", "400000")
              ],
          ..
        }

testTree :: TestTree
testTree = runGoldenTest "rds-replica-master.json" template
