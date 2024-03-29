module Stratosphere.Pipes.Pipe.EcsResourceRequirementProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EcsResourceRequirementProperty :: Prelude.Type
instance ToResourceProperties EcsResourceRequirementProperty
instance Prelude.Eq EcsResourceRequirementProperty
instance Prelude.Show EcsResourceRequirementProperty
instance JSON.ToJSON EcsResourceRequirementProperty