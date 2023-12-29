module Stratosphere.LookoutMetrics.AnomalyDetector.RedshiftSourceConfigProperty (
        module Exports, RedshiftSourceConfigProperty(..),
        mkRedshiftSourceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LookoutMetrics.AnomalyDetector.VpcConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftSourceConfigProperty
  = RedshiftSourceConfigProperty {clusterIdentifier :: (Value Prelude.Text),
                                  databaseHost :: (Value Prelude.Text),
                                  databaseName :: (Value Prelude.Text),
                                  databasePort :: (Value Prelude.Integer),
                                  roleArn :: (Value Prelude.Text),
                                  secretManagerArn :: (Value Prelude.Text),
                                  tableName :: (Value Prelude.Text),
                                  vpcConfiguration :: VpcConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftSourceConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Integer
           -> Value Prelude.Text
              -> Value Prelude.Text
                 -> Value Prelude.Text
                    -> VpcConfigurationProperty -> RedshiftSourceConfigProperty
mkRedshiftSourceConfigProperty
  clusterIdentifier
  databaseHost
  databaseName
  databasePort
  roleArn
  secretManagerArn
  tableName
  vpcConfiguration
  = RedshiftSourceConfigProperty
      {clusterIdentifier = clusterIdentifier,
       databaseHost = databaseHost, databaseName = databaseName,
       databasePort = databasePort, roleArn = roleArn,
       secretManagerArn = secretManagerArn, tableName = tableName,
       vpcConfiguration = vpcConfiguration}
instance ToResourceProperties RedshiftSourceConfigProperty where
  toResourceProperties RedshiftSourceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::AnomalyDetector.RedshiftSourceConfig",
         supportsTags = Prelude.False,
         properties = ["ClusterIdentifier" JSON..= clusterIdentifier,
                       "DatabaseHost" JSON..= databaseHost,
                       "DatabaseName" JSON..= databaseName,
                       "DatabasePort" JSON..= databasePort, "RoleArn" JSON..= roleArn,
                       "SecretManagerArn" JSON..= secretManagerArn,
                       "TableName" JSON..= tableName,
                       "VpcConfiguration" JSON..= vpcConfiguration]}
instance JSON.ToJSON RedshiftSourceConfigProperty where
  toJSON RedshiftSourceConfigProperty {..}
    = JSON.object
        ["ClusterIdentifier" JSON..= clusterIdentifier,
         "DatabaseHost" JSON..= databaseHost,
         "DatabaseName" JSON..= databaseName,
         "DatabasePort" JSON..= databasePort, "RoleArn" JSON..= roleArn,
         "SecretManagerArn" JSON..= secretManagerArn,
         "TableName" JSON..= tableName,
         "VpcConfiguration" JSON..= vpcConfiguration]
instance Property "ClusterIdentifier" RedshiftSourceConfigProperty where
  type PropertyType "ClusterIdentifier" RedshiftSourceConfigProperty = Value Prelude.Text
  set newValue RedshiftSourceConfigProperty {..}
    = RedshiftSourceConfigProperty {clusterIdentifier = newValue, ..}
instance Property "DatabaseHost" RedshiftSourceConfigProperty where
  type PropertyType "DatabaseHost" RedshiftSourceConfigProperty = Value Prelude.Text
  set newValue RedshiftSourceConfigProperty {..}
    = RedshiftSourceConfigProperty {databaseHost = newValue, ..}
instance Property "DatabaseName" RedshiftSourceConfigProperty where
  type PropertyType "DatabaseName" RedshiftSourceConfigProperty = Value Prelude.Text
  set newValue RedshiftSourceConfigProperty {..}
    = RedshiftSourceConfigProperty {databaseName = newValue, ..}
instance Property "DatabasePort" RedshiftSourceConfigProperty where
  type PropertyType "DatabasePort" RedshiftSourceConfigProperty = Value Prelude.Integer
  set newValue RedshiftSourceConfigProperty {..}
    = RedshiftSourceConfigProperty {databasePort = newValue, ..}
instance Property "RoleArn" RedshiftSourceConfigProperty where
  type PropertyType "RoleArn" RedshiftSourceConfigProperty = Value Prelude.Text
  set newValue RedshiftSourceConfigProperty {..}
    = RedshiftSourceConfigProperty {roleArn = newValue, ..}
instance Property "SecretManagerArn" RedshiftSourceConfigProperty where
  type PropertyType "SecretManagerArn" RedshiftSourceConfigProperty = Value Prelude.Text
  set newValue RedshiftSourceConfigProperty {..}
    = RedshiftSourceConfigProperty {secretManagerArn = newValue, ..}
instance Property "TableName" RedshiftSourceConfigProperty where
  type PropertyType "TableName" RedshiftSourceConfigProperty = Value Prelude.Text
  set newValue RedshiftSourceConfigProperty {..}
    = RedshiftSourceConfigProperty {tableName = newValue, ..}
instance Property "VpcConfiguration" RedshiftSourceConfigProperty where
  type PropertyType "VpcConfiguration" RedshiftSourceConfigProperty = VpcConfigurationProperty
  set newValue RedshiftSourceConfigProperty {..}
    = RedshiftSourceConfigProperty {vpcConfiguration = newValue, ..}