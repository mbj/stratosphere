module Stratosphere.ECS.TaskDefinition.RestartPolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RestartPolicyProperty :: Prelude.Type
instance ToResourceProperties RestartPolicyProperty
instance Prelude.Eq RestartPolicyProperty
instance Prelude.Show RestartPolicyProperty
instance JSON.ToJSON RestartPolicyProperty