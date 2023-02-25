module Stratosphere.ECS.CapacityProvider.ManagedScalingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ManagedScalingProperty :: Prelude.Type
instance ToResourceProperties ManagedScalingProperty
instance JSON.ToJSON ManagedScalingProperty