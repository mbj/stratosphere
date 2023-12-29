module Stratosphere.IoTAnalytics.Dataset.DatasetContentVersionValueProperty (
        DatasetContentVersionValueProperty(..),
        mkDatasetContentVersionValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatasetContentVersionValueProperty
  = DatasetContentVersionValueProperty {datasetName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatasetContentVersionValueProperty ::
  Value Prelude.Text -> DatasetContentVersionValueProperty
mkDatasetContentVersionValueProperty datasetName
  = DatasetContentVersionValueProperty {datasetName = datasetName}
instance ToResourceProperties DatasetContentVersionValueProperty where
  toResourceProperties DatasetContentVersionValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.DatasetContentVersionValue",
         supportsTags = Prelude.False,
         properties = ["DatasetName" JSON..= datasetName]}
instance JSON.ToJSON DatasetContentVersionValueProperty where
  toJSON DatasetContentVersionValueProperty {..}
    = JSON.object ["DatasetName" JSON..= datasetName]
instance Property "DatasetName" DatasetContentVersionValueProperty where
  type PropertyType "DatasetName" DatasetContentVersionValueProperty = Value Prelude.Text
  set newValue DatasetContentVersionValueProperty {}
    = DatasetContentVersionValueProperty {datasetName = newValue, ..}