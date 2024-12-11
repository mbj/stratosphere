module Stratosphere.CleanRoomsML.TrainingDataset.DatasetProperty (
        module Exports, DatasetProperty(..), mkDatasetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRoomsML.TrainingDataset.DatasetInputConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatasetProperty
  = DatasetProperty {inputConfig :: DatasetInputConfigProperty,
                     type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatasetProperty ::
  DatasetInputConfigProperty -> Value Prelude.Text -> DatasetProperty
mkDatasetProperty inputConfig type'
  = DatasetProperty {inputConfig = inputConfig, type' = type'}
instance ToResourceProperties DatasetProperty where
  toResourceProperties DatasetProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRoomsML::TrainingDataset.Dataset",
         supportsTags = Prelude.False,
         properties = ["InputConfig" JSON..= inputConfig,
                       "Type" JSON..= type']}
instance JSON.ToJSON DatasetProperty where
  toJSON DatasetProperty {..}
    = JSON.object
        ["InputConfig" JSON..= inputConfig, "Type" JSON..= type']
instance Property "InputConfig" DatasetProperty where
  type PropertyType "InputConfig" DatasetProperty = DatasetInputConfigProperty
  set newValue DatasetProperty {..}
    = DatasetProperty {inputConfig = newValue, ..}
instance Property "Type" DatasetProperty where
  type PropertyType "Type" DatasetProperty = Value Prelude.Text
  set newValue DatasetProperty {..}
    = DatasetProperty {type' = newValue, ..}