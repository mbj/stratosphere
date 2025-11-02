module Stratosphere.IoTAnalytics.Dataset.TriggeringDatasetProperty (
        TriggeringDatasetProperty(..), mkTriggeringDatasetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TriggeringDatasetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-triggeringdataset.html>
    TriggeringDatasetProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-triggeringdataset.html#cfn-iotanalytics-dataset-triggeringdataset-datasetname>
                               datasetName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTriggeringDatasetProperty ::
  Value Prelude.Text -> TriggeringDatasetProperty
mkTriggeringDatasetProperty datasetName
  = TriggeringDatasetProperty
      {haddock_workaround_ = (), datasetName = datasetName}
instance ToResourceProperties TriggeringDatasetProperty where
  toResourceProperties TriggeringDatasetProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.TriggeringDataset",
         supportsTags = Prelude.False,
         properties = ["DatasetName" JSON..= datasetName]}
instance JSON.ToJSON TriggeringDatasetProperty where
  toJSON TriggeringDatasetProperty {..}
    = JSON.object ["DatasetName" JSON..= datasetName]
instance Property "DatasetName" TriggeringDatasetProperty where
  type PropertyType "DatasetName" TriggeringDatasetProperty = Value Prelude.Text
  set newValue TriggeringDatasetProperty {..}
    = TriggeringDatasetProperty {datasetName = newValue, ..}