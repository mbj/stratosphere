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
  = ConnectionConfigurationProperty {databaseHost :: (Value Prelude.Text),
                                     databaseName :: (Value Prelude.Text),
                                     databasePort :: (Value Prelude.Integer),
                                     secretArn :: (Value Prelude.Text),
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
      {databaseHost = databaseHost, databaseName = databaseName,
       databasePort = databasePort, secretArn = secretArn,
       tableName = tableName}
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