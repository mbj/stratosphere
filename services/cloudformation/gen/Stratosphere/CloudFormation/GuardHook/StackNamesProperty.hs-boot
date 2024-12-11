module Stratosphere.CloudFormation.GuardHook.StackNamesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StackNamesProperty :: Prelude.Type
instance ToResourceProperties StackNamesProperty
instance Prelude.Eq StackNamesProperty
instance Prelude.Show StackNamesProperty
instance JSON.ToJSON StackNamesProperty