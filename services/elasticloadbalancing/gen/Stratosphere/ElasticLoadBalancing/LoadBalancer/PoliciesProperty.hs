module Stratosphere.ElasticLoadBalancing.LoadBalancer.PoliciesProperty (
        PoliciesProperty(..), mkPoliciesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PoliciesProperty
  = PoliciesProperty {attributes :: JSON.Object,
                      instancePorts :: (Prelude.Maybe (ValueList Prelude.Text)),
                      loadBalancerPorts :: (Prelude.Maybe (ValueList Prelude.Text)),
                      policyName :: (Value Prelude.Text),
                      policyType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPoliciesProperty ::
  JSON.Object
  -> Value Prelude.Text -> Value Prelude.Text -> PoliciesProperty
mkPoliciesProperty attributes policyName policyType
  = PoliciesProperty
      {attributes = attributes, policyName = policyName,
       policyType = policyType, instancePorts = Prelude.Nothing,
       loadBalancerPorts = Prelude.Nothing}
instance ToResourceProperties PoliciesProperty where
  toResourceProperties PoliciesProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancing::LoadBalancer.Policies",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Attributes" JSON..= attributes, "PolicyName" JSON..= policyName,
                            "PolicyType" JSON..= policyType]
                           (Prelude.catMaybes
                              [(JSON..=) "InstancePorts" Prelude.<$> instancePorts,
                               (JSON..=) "LoadBalancerPorts" Prelude.<$> loadBalancerPorts]))}
instance JSON.ToJSON PoliciesProperty where
  toJSON PoliciesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Attributes" JSON..= attributes, "PolicyName" JSON..= policyName,
               "PolicyType" JSON..= policyType]
              (Prelude.catMaybes
                 [(JSON..=) "InstancePorts" Prelude.<$> instancePorts,
                  (JSON..=) "LoadBalancerPorts" Prelude.<$> loadBalancerPorts])))
instance Property "Attributes" PoliciesProperty where
  type PropertyType "Attributes" PoliciesProperty = JSON.Object
  set newValue PoliciesProperty {..}
    = PoliciesProperty {attributes = newValue, ..}
instance Property "InstancePorts" PoliciesProperty where
  type PropertyType "InstancePorts" PoliciesProperty = ValueList Prelude.Text
  set newValue PoliciesProperty {..}
    = PoliciesProperty {instancePorts = Prelude.pure newValue, ..}
instance Property "LoadBalancerPorts" PoliciesProperty where
  type PropertyType "LoadBalancerPorts" PoliciesProperty = ValueList Prelude.Text
  set newValue PoliciesProperty {..}
    = PoliciesProperty {loadBalancerPorts = Prelude.pure newValue, ..}
instance Property "PolicyName" PoliciesProperty where
  type PropertyType "PolicyName" PoliciesProperty = Value Prelude.Text
  set newValue PoliciesProperty {..}
    = PoliciesProperty {policyName = newValue, ..}
instance Property "PolicyType" PoliciesProperty where
  type PropertyType "PolicyType" PoliciesProperty = Value Prelude.Text
  set newValue PoliciesProperty {..}
    = PoliciesProperty {policyType = newValue, ..}