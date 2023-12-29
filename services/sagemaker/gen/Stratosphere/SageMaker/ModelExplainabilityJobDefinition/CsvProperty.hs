module Stratosphere.SageMaker.ModelExplainabilityJobDefinition.CsvProperty (
        CsvProperty(..), mkCsvProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CsvProperty
  = CsvProperty {header :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCsvProperty :: CsvProperty
mkCsvProperty = CsvProperty {header = Prelude.Nothing}
instance ToResourceProperties CsvProperty where
  toResourceProperties CsvProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelExplainabilityJobDefinition.Csv",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Header" Prelude.<$> header])}
instance JSON.ToJSON CsvProperty where
  toJSON CsvProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Header" Prelude.<$> header]))
instance Property "Header" CsvProperty where
  type PropertyType "Header" CsvProperty = Value Prelude.Bool
  set newValue CsvProperty {}
    = CsvProperty {header = Prelude.pure newValue, ..}