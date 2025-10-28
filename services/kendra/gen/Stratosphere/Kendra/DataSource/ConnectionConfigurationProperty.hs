module Stratosphere.Kendra.DataSource.ConnectionConfigurationProperty (
        ConnectionConfigurationProperty(..),
        mkConnectionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-connectionconfiguration.html>
    ConnectionConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-connectionconfiguration.html#cfn-kendra-datasource-connectionconfiguration-databasehost>
                                     databaseHost :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-connectionconfiguration.html#cfn-kendra-datasource-connectionconfiguration-databasename>
                                     databaseName :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-connectionconfiguration.html#cfn-kendra-datasource-connectionconfiguration-databaseport>
                                     databasePort :: (Value Prelude.Integer),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-connectionconfiguration.html#cfn-kendra-datasource-connectionconfiguration-secretarn>
                                     secretArn :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-connectionconfiguration.html#cfn-kendra-datasource-connectionconfiguration-tablename>
                                     tableName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectionConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Integer
        -> Value Prelude.Text
           -> Value Prelude.Text -> ConnectionConfigurationProperty
mkConnectionConfigurationProperty
  databaseHost
  databaseName
  databasePort
  secretArn
  tableName
  = ConnectionConfigurationProperty
      {haddock_workaround_ = (), databaseHost = databaseHost,
       databaseName = databaseName, databasePort = databasePort,
       secretArn = secretArn, tableName = tableName}
instance ToResourceProperties ConnectionConfigurationProperty where
  toResourceProperties ConnectionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.ConnectionConfiguration",
         supportsTags = Prelude.False,
         properties = ["DatabaseHost" JSON..= databaseHost,
                       "DatabaseName" JSON..= databaseName,
                       "DatabasePort" JSON..= databasePort, "SecretArn" JSON..= secretArn,
                       "TableName" JSON..= tableName]}
instance JSON.ToJSON ConnectionConfigurationProperty where
  toJSON ConnectionConfigurationProperty {..}
    = JSON.object
        ["DatabaseHost" JSON..= databaseHost,
         "DatabaseName" JSON..= databaseName,
         "DatabasePort" JSON..= databasePort, "SecretArn" JSON..= secretArn,
         "TableName" JSON..= tableName]
instance Property "DatabaseHost" ConnectionConfigurationProperty where
  type PropertyType "DatabaseHost" ConnectionConfigurationProperty = Value Prelude.Text
  set newValue ConnectionConfigurationProperty {..}
    = ConnectionConfigurationProperty {databaseHost = newValue, ..}
instance Property "DatabaseName" ConnectionConfigurationProperty where
  type PropertyType "DatabaseName" ConnectionConfigurationProperty = Value Prelude.Text
  set newValue ConnectionConfigurationProperty {..}
    = ConnectionConfigurationProperty {databaseName = newValue, ..}
instance Property "DatabasePort" ConnectionConfigurationProperty where
  type PropertyType "DatabasePort" ConnectionConfigurationProperty = Value Prelude.Integer
  set newValue ConnectionConfigurationProperty {..}
    = ConnectionConfigurationProperty {databasePort = newValue, ..}
instance Property "SecretArn" ConnectionConfigurationProperty where
  type PropertyType "SecretArn" ConnectionConfigurationProperty = Value Prelude.Text
  set newValue ConnectionConfigurationProperty {..}
    = ConnectionConfigurationProperty {secretArn = newValue, ..}
instance Property "TableName" ConnectionConfigurationProperty where
  type PropertyType "TableName" ConnectionConfigurationProperty = Value Prelude.Text
  set newValue ConnectionConfigurationProperty {..}
    = ConnectionConfigurationProperty {tableName = newValue, ..}