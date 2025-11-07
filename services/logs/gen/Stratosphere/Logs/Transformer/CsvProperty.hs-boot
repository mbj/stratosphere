module Stratosphere.Logs.Transformer.CsvProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CsvProperty :: Prelude.Type
instance ToResourceProperties CsvProperty
instance Prelude.Eq CsvProperty
instance Prelude.Show CsvProperty
instance JSON.ToJSON CsvProperty