module Stratosphere.SageMaker.MonitoringSchedule.DatasetFormatProperty (
        module Exports, DatasetFormatProperty(..), mkDatasetFormatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.MonitoringSchedule.CsvProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.MonitoringSchedule.JsonProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatasetFormatProperty
  = DatasetFormatProperty {csv :: (Prelude.Maybe CsvProperty),
                           json :: (Prelude.Maybe JsonProperty),
                           parquet :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatasetFormatProperty :: DatasetFormatProperty
mkDatasetFormatProperty
  = DatasetFormatProperty
      {csv = Prelude.Nothing, json = Prelude.Nothing,
       parquet = Prelude.Nothing}
instance ToResourceProperties DatasetFormatProperty where
  toResourceProperties DatasetFormatProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::MonitoringSchedule.DatasetFormat",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Csv" Prelude.<$> csv,
                            (JSON..=) "Json" Prelude.<$> json,
                            (JSON..=) "Parquet" Prelude.<$> parquet])}
instance JSON.ToJSON DatasetFormatProperty where
  toJSON DatasetFormatProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Csv" Prelude.<$> csv,
               (JSON..=) "Json" Prelude.<$> json,
               (JSON..=) "Parquet" Prelude.<$> parquet]))
instance Property "Csv" DatasetFormatProperty where
  type PropertyType "Csv" DatasetFormatProperty = CsvProperty
  set newValue DatasetFormatProperty {..}
    = DatasetFormatProperty {csv = Prelude.pure newValue, ..}
instance Property "Json" DatasetFormatProperty where
  type PropertyType "Json" DatasetFormatProperty = JsonProperty
  set newValue DatasetFormatProperty {..}
    = DatasetFormatProperty {json = Prelude.pure newValue, ..}
instance Property "Parquet" DatasetFormatProperty where
  type PropertyType "Parquet" DatasetFormatProperty = Value Prelude.Bool
  set newValue DatasetFormatProperty {..}
    = DatasetFormatProperty {parquet = Prelude.pure newValue, ..}