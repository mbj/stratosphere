module Stratosphere.ElasticLoadBalancing.LoadBalancer.ConnectionDrainingPolicyProperty (
        ConnectionDrainingPolicyProperty(..),
        mkConnectionDrainingPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectionDrainingPolicyProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html>
    ConnectionDrainingPolicyProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html#cfn-elb-connectiondrainingpolicy-enabled>
                                      enabled :: (Value Prelude.Bool),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html#cfn-elb-connectiondrainingpolicy-timeout>
                                      timeout :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectionDrainingPolicyProperty ::
  Value Prelude.Bool -> ConnectionDrainingPolicyProperty
mkConnectionDrainingPolicyProperty enabled
  = ConnectionDrainingPolicyProperty
      {enabled = enabled, timeout = Prelude.Nothing}
instance ToResourceProperties ConnectionDrainingPolicyProperty where
  toResourceProperties ConnectionDrainingPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancing::LoadBalancer.ConnectionDrainingPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes [(JSON..=) "Timeout" Prelude.<$> timeout]))}
instance JSON.ToJSON ConnectionDrainingPolicyProperty where
  toJSON ConnectionDrainingPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes [(JSON..=) "Timeout" Prelude.<$> timeout])))
instance Property "Enabled" ConnectionDrainingPolicyProperty where
  type PropertyType "Enabled" ConnectionDrainingPolicyProperty = Value Prelude.Bool
  set newValue ConnectionDrainingPolicyProperty {..}
    = ConnectionDrainingPolicyProperty {enabled = newValue, ..}
instance Property "Timeout" ConnectionDrainingPolicyProperty where
  type PropertyType "Timeout" ConnectionDrainingPolicyProperty = Value Prelude.Integer
  set newValue ConnectionDrainingPolicyProperty {..}
    = ConnectionDrainingPolicyProperty
        {timeout = Prelude.pure newValue, ..}