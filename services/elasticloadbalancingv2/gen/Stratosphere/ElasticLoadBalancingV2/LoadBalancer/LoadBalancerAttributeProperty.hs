module Stratosphere.ElasticLoadBalancingV2.LoadBalancer.LoadBalancerAttributeProperty (
        LoadBalancerAttributeProperty(..), mkLoadBalancerAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoadBalancerAttributeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-loadbalancerattribute.html>
    LoadBalancerAttributeProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-loadbalancerattribute.html#cfn-elasticloadbalancingv2-loadbalancer-loadbalancerattribute-key>
                                   key :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-loadbalancer-loadbalancerattribute.html#cfn-elasticloadbalancingv2-loadbalancer-loadbalancerattribute-value>
                                   value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoadBalancerAttributeProperty :: LoadBalancerAttributeProperty
mkLoadBalancerAttributeProperty
  = LoadBalancerAttributeProperty
      {haddock_workaround_ = (), key = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties LoadBalancerAttributeProperty where
  toResourceProperties LoadBalancerAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::LoadBalancer.LoadBalancerAttribute",
         supportsTags = Prelude.False,
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