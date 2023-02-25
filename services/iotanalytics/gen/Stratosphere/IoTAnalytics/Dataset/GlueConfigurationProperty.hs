module Stratosphere.IoTAnalytics.Dataset.GlueConfigurationProperty (
        GlueConfigurationProperty(..), mkGlueConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlueConfigurationProperty
  = GlueConfigurationProperty {databaseName :: (Value Prelude.Text),
                               tableName :: (Value Prelude.Text)}
mkGlueConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> GlueConfigurationProperty
mkGlueConfigurationProperty databaseName tableName
  = GlueConfigurationProperty
      {databaseName = databaseName, tableName = tableName}
instance ToResourceProperties GlueConfigurationProperty where
  toResourceProperties GlueConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.GlueConfiguration",
         properties = ["DatabaseName" JSON..= databaseName,
                       "TableName" JSON..= tableName]}
instance JSON.ToJSON GlueConfigurationProperty where
  toJSON GlueConfigurationProperty {..}
    = JSON.object
        ["DatabaseName" JSON..= databaseName,
         "TableName" JSON..= tableName]
instance Property "DatabaseName" GlueConfigurationProperty where
  type PropertyType "DatabaseName" GlueConfigurationProperty = Value Prelude.Text
  set newValue GlueConfigurationProperty {..}
    = GlueConfigurationProperty {databaseName = newValue, ..}
instance Property "TableName" GlueConfigurationProperty where
  type PropertyType "TableName" GlueConfigurationProperty = Value Prelude.Text
  set newValue GlueConfigurationProperty {..}
    = GlueConfigurationProperty {tableName = newValue, ..}