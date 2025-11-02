module Stratosphere.ElasticLoadBalancingV2.TargetGroup.TargetGroupAttributeProperty (
        TargetGroupAttributeProperty(..), mkTargetGroupAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetGroupAttributeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetgroupattribute.html>
    TargetGroupAttributeProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetgroupattribute.html#cfn-elasticloadbalancingv2-targetgroup-targetgroupattribute-key>
                                  key :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-targetgroup-targetgroupattribute.html#cfn-elasticloadbalancingv2-targetgroup-targetgroupattribute-value>
                                  value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetGroupAttributeProperty :: TargetGroupAttributeProperty
mkTargetGroupAttributeProperty
  = TargetGroupAttributeProperty
      {haddock_workaround_ = (), key = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties TargetGroupAttributeProperty where
  toResourceProperties TargetGroupAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::TargetGroup.TargetGroupAttribute",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON TargetGroupAttributeProperty where
  toJSON TargetGroupAttributeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" TargetGroupAttributeProperty where
  type PropertyType "Key" TargetGroupAttributeProperty = Value Prelude.Text
  set newValue TargetGroupAttributeProperty {..}
    = TargetGroupAttributeProperty {key = Prelude.pure newValue, ..}
instance Property "Value" TargetGroupAttributeProperty where
  type PropertyType "Value" TargetGroupAttributeProperty = Value Prelude.Text
  set newValue TargetGroupAttributeProperty {..}
    = TargetGroupAttributeProperty {value = Prelude.pure newValue, ..}