module Stratosphere.IoTAnalytics.Dataset.GlueConfigurationProperty (
        GlueConfigurationProperty(..), mkGlueConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlueConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-glueconfiguration.html>
    GlueConfigurationProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-glueconfiguration.html#cfn-iotanalytics-dataset-glueconfiguration-databasename>
                               databaseName :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-glueconfiguration.html#cfn-iotanalytics-dataset-glueconfiguration-tablename>
                               tableName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlueConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> GlueConfigurationProperty
mkGlueConfigurationProperty databaseName tableName
  = GlueConfigurationProperty
      {haddock_workaround_ = (), databaseName = databaseName,
       tableName = tableName}
instance ToResourceProperties GlueConfigurationProperty where
  toResourceProperties GlueConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.GlueConfiguration",
         supportsTags = Prelude.False,
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