module Stratosphere.CloudFormation.GuardHook.StackRolesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StackRolesProperty :: Prelude.Type
instance ToResourceProperties StackRolesProperty
instance Prelude.Eq StackRolesProperty
instance Prelude.Show StackRolesProperty
instance JSON.ToJSON StackRolesProperty