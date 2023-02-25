module Stratosphere.QuickSight.Template.DataSetSchemaProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataSetSchemaProperty :: Prelude.Type
instance ToResourceProperties DataSetSchemaProperty
instance JSON.ToJSON DataSetSchemaProperty