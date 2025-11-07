module Stratosphere.Cassandra.Type.FieldProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FieldProperty :: Prelude.Type
instance ToResourceProperties FieldProperty
instance Prelude.Eq FieldProperty
instance Prelude.Show FieldProperty
instance JSON.ToJSON FieldProperty