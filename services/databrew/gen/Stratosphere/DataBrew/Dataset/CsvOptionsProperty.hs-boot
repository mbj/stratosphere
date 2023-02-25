module Stratosphere.DataBrew.Dataset.CsvOptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CsvOptionsProperty :: Prelude.Type
instance ToResourceProperties CsvOptionsProperty
instance JSON.ToJSON CsvOptionsProperty