module Stratosphere.SageMaker.ModelBiasJobDefinition.DatasetFormatProperty (
        module Exports, DatasetFormatProperty(..), mkDatasetFormatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelBiasJobDefinition.CsvProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.ModelBiasJobDefinition.JsonProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatasetFormatProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-datasetformat.html>
    DatasetFormatProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-datasetformat.html#cfn-sagemaker-modelbiasjobdefinition-datasetformat-csv>
                           csv :: (Prelude.Maybe CsvProperty),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-datasetformat.html#cfn-sagemaker-modelbiasjobdefinition-datasetformat-json>
                           json :: (Prelude.Maybe JsonProperty),
                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-datasetformat.html#cfn-sagemaker-modelbiasjobdefinition-datasetformat-parquet>
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
        {awsType = "AWS::SageMaker::ModelBiasJobDefinition.DatasetFormat",
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