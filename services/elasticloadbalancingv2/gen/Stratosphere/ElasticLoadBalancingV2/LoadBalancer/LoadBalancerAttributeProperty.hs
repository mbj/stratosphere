module Stratosphere.ElasticLoadBalancingV2.LoadBalancer.LoadBalancerAttributeProperty (
        LoadBalancerAttributeProperty(..), mkLoadBalancerAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoadBalancerAttributeProperty
  = LoadBalancerAttributeProperty {key :: (Prelude.Maybe (Value Prelude.Text)),
                                   value :: (Prelude.Maybe (Value Prelude.Text))}
mkLoadBalancerAttributeProperty :: LoadBalancerAttributeProperty
mkLoadBalancerAttributeProperty
  = LoadBalancerAttributeProperty
      {key = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties LoadBalancerAttributeProperty where
  toResourceProperties LoadBalancerAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::LoadBalancer.LoadBalancerAttribute",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON LoadBalancerAttributeProperty where
  toJSON LoadBalancerAttributeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" LoadBalancerAttributeProperty where
  type PropertyType "Key" LoadBalancerAttributeProperty = Value Prelude.Text
  set newValue LoadBalancerAttributeProperty {..}
    = LoadBalancerAttributeProperty {key = Prelude.pure newValue, ..}
instance Property "Value" LoadBalancerAttributeProperty where
  type PropertyType "Value" LoadBalancerAttributeProperty = Value Prelude.Text
  set newValue LoadBalancerAttributeProperty {..}
    = LoadBalancerAttributeProperty {value = Prelude.pure newValue, ..}