module Stratosphere.KinesisAnalyticsV2.Application.JSONMappingParametersProperty (
        JSONMappingParametersProperty(..), mkJSONMappingParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JSONMappingParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-jsonmappingparameters.html>
    JSONMappingParametersProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-jsonmappingparameters.html#cfn-kinesisanalyticsv2-application-jsonmappingparameters-recordrowpath>
                                   recordRowPath :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJSONMappingParametersProperty ::
  Value Prelude.Text -> JSONMappingParametersProperty
mkJSONMappingParametersProperty recordRowPath
  = JSONMappingParametersProperty
      {haddock_workaround_ = (), recordRowPath = recordRowPath}
instance ToResourceProperties JSONMappingParametersProperty where
  toResourceProperties JSONMappingParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.JSONMappingParameters",
         supportsTags = Prelude.False,
         properties = ["RecordRowPath" JSON..= recordRowPath]}
instance JSON.ToJSON JSONMappingParametersProperty where
  toJSON JSONMappingParametersProperty {..}
    = JSON.object ["RecordRowPath" JSON..= recordRowPath]
instance Property "RecordRowPath" JSONMappingParametersProperty where
  type PropertyType "RecordRowPath" JSONMappingParametersProperty = Value Prelude.Text
  set newValue JSONMappingParametersProperty {..}
    = JSONMappingParametersProperty {recordRowPath = newValue, ..}