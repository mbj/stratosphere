module Stratosphere.Glue.SchemaVersion.SchemaProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SchemaProperty :: Prelude.Type
instance ToResourceProperties SchemaProperty
instance Prelude.Eq SchemaProperty
instance Prelude.Show SchemaProperty
instance JSON.ToJSON SchemaProperty