module Stratosphere.DataBrew.Job.CsvOutputOptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CsvOutputOptionsProperty :: Prelude.Type
instance ToResourceProperties CsvOutputOptionsProperty
instance JSON.ToJSON CsvOutputOptionsProperty