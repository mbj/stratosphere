module Stratosphere.Connect.Rule.FieldValueProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FieldValueProperty :: Prelude.Type
instance ToResourceProperties FieldValueProperty
instance Prelude.Eq FieldValueProperty
instance Prelude.Show FieldValueProperty
instance JSON.ToJSON FieldValueProperty