module Stratosphere.ECS.TaskSet.LoadBalancerProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LoadBalancerProperty :: Prelude.Type
instance ToResourceProperties LoadBalancerProperty
instance JSON.ToJSON LoadBalancerProperty