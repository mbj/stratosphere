module Stratosphere.Connect.TaskTemplate.FieldProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FieldProperty :: Prelude.Type
instance ToResourceProperties FieldProperty
instance JSON.ToJSON FieldProperty