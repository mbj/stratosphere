module Stratosphere.LookoutMetrics.AnomalyDetector.RDSSourceConfigProperty (
        module Exports, RDSSourceConfigProperty(..),
        mkRDSSourceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LookoutMetrics.AnomalyDetector.VpcConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RDSSourceConfigProperty
  = RDSSourceConfigProperty {dBInstanceIdentifier :: (Value Prelude.Text),
                             databaseHost :: (Value Prelude.Text),
                             databaseName :: (Value Prelude.Text),
                             databasePort :: (Value Prelude.Integer),
                             roleArn :: (Value Prelude.Text),
                             secretManagerArn :: (Value Prelude.Text),
                             tableName :: (Value Prelude.Text),
                             vpcConfiguration :: VpcConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRDSSourceConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Integer
           -> Value Prelude.Text
              -> Value Prelude.Text
                 -> Value Prelude.Text
                    -> VpcConfigurationProperty -> RDSSourceConfigProperty
mkRDSSourceConfigProperty
  dBInstanceIdentifier
  databaseHost
  databaseName
  databasePort
  roleArn
  secretManagerArn
  tableName
  vpcConfiguration
  = RDSSourceConfigProperty
      {dBInstanceIdentifier = dBInstanceIdentifier,
       databaseHost = databaseHost, databaseName = databaseName,
       databasePort = databasePort, roleArn = roleArn,
       secretManagerArn = secretManagerArn, tableName = tableName,
       vpcConfiguration = vpcConfiguration}
instance ToResourceProperties RDSSourceConfigProperty where
  toResourceProperties RDSSourceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::AnomalyDetector.RDSSourceConfig",
         supportsTags = Prelude.False,
         properties = ["DBInstanceIdentifier" JSON..= dBInstanceIdentifier,
                       "DatabaseHost" JSON..= databaseHost,
                       "DatabaseName" JSON..= databaseName,
                       "DatabasePort" JSON..= databasePort, "RoleArn" JSON..= roleArn,
                       "SecretManagerArn" JSON..= secretManagerArn,
                       "TableName" JSON..= tableName,
                       "VpcConfiguration" JSON..= vpcConfiguration]}
instance JSON.ToJSON RDSSourceConfigProperty where
  toJSON RDSSourceConfigProperty {..}
    = JSON.object
        ["DBInstanceIdentifier" JSON..= dBInstanceIdentifier,
         "DatabaseHost" JSON..= databaseHost,
         "DatabaseName" JSON..= databaseName,
         "DatabasePort" JSON..= databasePort, "RoleArn" JSON..= roleArn,
         "SecretManagerArn" JSON..= secretManagerArn,
         "TableName" JSON..= tableName,
         "VpcConfiguration" JSON..= vpcConfiguration]
instance Property "DBInstanceIdentifier" RDSSourceConfigProperty where
  type PropertyType "DBInstanceIdentifier" RDSSourceConfigProperty = Value Prelude.Text
  set newValue RDSSourceConfigProperty {..}
    = RDSSourceConfigProperty {dBInstanceIdentifier = newValue, ..}
instance Property "DatabaseHost" RDSSourceConfigProperty where
  type PropertyType "DatabaseHost" RDSSourceConfigProperty = Value Prelude.Text
  set newValue RDSSourceConfigProperty {..}
    = RDSSourceConfigProperty {databaseHost = newValue, ..}
instance Property "DatabaseName" RDSSourceConfigProperty where
  type PropertyType "DatabaseName" RDSSourceConfigProperty = Value Prelude.Text
  set newValue RDSSourceConfigProperty {..}
    = RDSSourceConfigProperty {databaseName = newValue, ..}
instance Property "DatabasePort" RDSSourceConfigProperty where
  type PropertyType "DatabasePort" RDSSourceConfigProperty = Value Prelude.Integer
  set newValue RDSSourceConfigProperty {..}
    = RDSSourceConfigProperty {databasePort = newValue, ..}
instance Property "RoleArn" RDSSourceConfigProperty where
  type PropertyType "RoleArn" RDSSourceConfigProperty = Value Prelude.Text
  set newValue RDSSourceConfigProperty {..}
    = RDSSourceConfigProperty {roleArn = newValue, ..}
instance Property "SecretManagerArn" RDSSourceConfigProperty where
  type PropertyType "SecretManagerArn" RDSSourceConfigProperty = Value Prelude.Text
  set newValue RDSSourceConfigProperty {..}
    = RDSSourceConfigProperty {secretManagerArn = newValue, ..}
instance Property "TableName" RDSSourceConfigProperty where
  type PropertyType "TableName" RDSSourceConfigProperty = Value Prelude.Text
  set newValue RDSSourceConfigProperty {..}
    = RDSSourceConfigProperty {tableName = newValue, ..}
instance Property "VpcConfiguration" RDSSourceConfigProperty where
  type PropertyType "VpcConfiguration" RDSSourceConfigProperty = VpcConfigurationProperty
  set newValue RDSSourceConfigProperty {..}
    = RDSSourceConfigProperty {vpcConfiguration = newValue, ..}