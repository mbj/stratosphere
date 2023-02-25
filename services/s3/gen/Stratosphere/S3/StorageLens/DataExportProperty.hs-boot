module Stratosphere.S3.StorageLens.DataExportProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataExportProperty :: Prelude.Type
instance ToResourceProperties DataExportProperty
instance JSON.ToJSON DataExportProperty