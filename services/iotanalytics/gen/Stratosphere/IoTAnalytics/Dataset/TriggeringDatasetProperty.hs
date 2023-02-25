module Stratosphere.IoTAnalytics.Dataset.TriggeringDatasetProperty (
        TriggeringDatasetProperty(..), mkTriggeringDatasetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TriggeringDatasetProperty
  = TriggeringDatasetProperty {datasetName :: (Value Prelude.Text)}
mkTriggeringDatasetProperty ::
  Value Prelude.Text -> TriggeringDatasetProperty
mkTriggeringDatasetProperty datasetName
  = TriggeringDatasetProperty {datasetName = datasetName}
instance ToResourceProperties TriggeringDatasetProperty where
  toResourceProperties TriggeringDatasetProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.TriggeringDataset",
         properties = ["DatasetName" JSON..= datasetName]}
instance JSON.ToJSON TriggeringDatasetProperty where
  toJSON TriggeringDatasetProperty {..}
    = JSON.object ["DatasetName" JSON..= datasetName]
instance Property "DatasetName" TriggeringDatasetProperty where
  type PropertyType "DatasetName" TriggeringDatasetProperty = Value Prelude.Text
  set newValue TriggeringDatasetProperty {}
    = TriggeringDatasetProperty {datasetName = newValue, ..}