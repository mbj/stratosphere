module Stratosphere.ECS.Service.LoadBalancerProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LoadBalancerProperty :: Prelude.Type
instance ToResourceProperties LoadBalancerProperty
instance Prelude.Eq LoadBalancerProperty
instance Prelude.Show LoadBalancerProperty
instance JSON.ToJSON LoadBalancerProperty