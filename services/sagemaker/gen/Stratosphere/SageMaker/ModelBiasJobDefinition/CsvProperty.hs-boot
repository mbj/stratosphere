module Stratosphere.SageMaker.ModelBiasJobDefinition.CsvProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CsvProperty :: Prelude.Type
instance ToResourceProperties CsvProperty
instance JSON.ToJSON CsvProperty