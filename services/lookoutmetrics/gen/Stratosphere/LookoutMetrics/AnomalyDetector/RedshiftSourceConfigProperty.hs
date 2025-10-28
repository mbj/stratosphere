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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-redshiftsourceconfig.html>
    RedshiftSourceConfigProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-redshiftsourceconfig.html#cfn-lookoutmetrics-anomalydetector-redshiftsourceconfig-clusteridentifier>
                                  clusterIdentifier :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-redshiftsourceconfig.html#cfn-lookoutmetrics-anomalydetector-redshiftsourceconfig-databasehost>
                                  databaseHost :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-redshiftsourceconfig.html#cfn-lookoutmetrics-anomalydetector-redshiftsourceconfig-databasename>
                                  databaseName :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-redshiftsourceconfig.html#cfn-lookoutmetrics-anomalydetector-redshiftsourceconfig-databaseport>
                                  databasePort :: (Value Prelude.Integer),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-redshiftsourceconfig.html#cfn-lookoutmetrics-anomalydetector-redshiftsourceconfig-rolearn>
                                  roleArn :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-redshiftsourceconfig.html#cfn-lookoutmetrics-anomalydetector-redshiftsourceconfig-secretmanagerarn>
                                  secretManagerArn :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-redshiftsourceconfig.html#cfn-lookoutmetrics-anomalydetector-redshiftsourceconfig-tablename>
                                  tableName :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-redshiftsourceconfig.html#cfn-lookoutmetrics-anomalydetector-redshiftsourceconfig-vpcconfiguration>
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
      {haddock_workaround_ = (), clusterIdentifier = clusterIdentifier,
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