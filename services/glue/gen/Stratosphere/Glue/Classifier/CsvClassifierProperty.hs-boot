module Stratosphere.Glue.Classifier.CsvClassifierProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CsvClassifierProperty :: Prelude.Type
instance ToResourceProperties CsvClassifierProperty
instance JSON.ToJSON CsvClassifierProperty