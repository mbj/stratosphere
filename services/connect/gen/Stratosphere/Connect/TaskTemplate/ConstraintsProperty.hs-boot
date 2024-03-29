module Stratosphere.Connect.TaskTemplate.ConstraintsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ConstraintsProperty :: Prelude.Type
instance ToResourceProperties ConstraintsProperty
instance Prelude.Eq ConstraintsProperty
instance Prelude.Show ConstraintsProperty
instance JSON.ToJSON ConstraintsProperty