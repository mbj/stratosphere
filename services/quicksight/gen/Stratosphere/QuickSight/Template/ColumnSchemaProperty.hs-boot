module Stratosphere.QuickSight.Template.ColumnSchemaProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ColumnSchemaProperty :: Prelude.Type
instance ToResourceProperties ColumnSchemaProperty
instance JSON.ToJSON ColumnSchemaProperty