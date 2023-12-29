module Stratosphere.Glue.Table.SchemaReferenceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SchemaReferenceProperty :: Prelude.Type
instance ToResourceProperties SchemaReferenceProperty
instance Prelude.Eq SchemaReferenceProperty
instance Prelude.Show SchemaReferenceProperty
instance JSON.ToJSON SchemaReferenceProperty