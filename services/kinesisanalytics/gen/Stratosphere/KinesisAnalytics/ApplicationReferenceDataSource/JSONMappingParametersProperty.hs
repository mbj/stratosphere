module Stratosphere.KinesisAnalytics.ApplicationReferenceDataSource.JSONMappingParametersProperty (
        JSONMappingParametersProperty(..), mkJSONMappingParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JSONMappingParametersProperty
  = JSONMappingParametersProperty {recordRowPath :: (Value Prelude.Text)}
mkJSONMappingParametersProperty ::
  Value Prelude.Text -> JSONMappingParametersProperty
mkJSONMappingParametersProperty recordRowPath
  = JSONMappingParametersProperty {recordRowPath = recordRowPath}
instance ToResourceProperties JSONMappingParametersProperty where
  toResourceProperties JSONMappingParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalytics::ApplicationReferenceDataSource.JSONMappingParameters",
         properties = ["RecordRowPath" JSON..= recordRowPath]}
instance JSON.ToJSON JSONMappingParametersProperty where
  toJSON JSONMappingParametersProperty {..}
    = JSON.object ["RecordRowPath" JSON..= recordRowPath]
instance Property "RecordRowPath" JSONMappingParametersProperty where
  type PropertyType "RecordRowPath" JSONMappingParametersProperty = Value Prelude.Text
  set newValue JSONMappingParametersProperty {}
    = JSONMappingParametersProperty {recordRowPath = newValue, ..}