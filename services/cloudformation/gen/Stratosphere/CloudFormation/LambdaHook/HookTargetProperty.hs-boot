module Stratosphere.CloudFormation.LambdaHook.HookTargetProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data HookTargetProperty :: Prelude.Type
instance ToResourceProperties HookTargetProperty
instance Prelude.Eq HookTargetProperty
instance Prelude.Show HookTargetProperty
instance JSON.ToJSON HookTargetProperty