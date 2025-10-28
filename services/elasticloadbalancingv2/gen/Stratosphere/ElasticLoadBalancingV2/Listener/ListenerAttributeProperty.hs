module Stratosphere.ElasticLoadBalancingV2.Listener.ListenerAttributeProperty (
        ListenerAttributeProperty(..), mkListenerAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ListenerAttributeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-listenerattribute.html>
    ListenerAttributeProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-listenerattribute.html#cfn-elasticloadbalancingv2-listener-listenerattribute-key>
                               key :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-listenerattribute.html#cfn-elasticloadbalancingv2-listener-listenerattribute-value>
                               value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkListenerAttributeProperty :: ListenerAttributeProperty
mkListenerAttributeProperty
  = ListenerAttributeProperty
      {haddock_workaround_ = (), key = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties ListenerAttributeProperty where
  toResourceProperties ListenerAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::Listener.ListenerAttribute",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON ListenerAttributeProperty where
  toJSON ListenerAttributeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" ListenerAttributeProperty where
  type PropertyType "Key" ListenerAttributeProperty = Value Prelude.Text
  set newValue ListenerAttributeProperty {..}
    = ListenerAttributeProperty {key = Prelude.pure newValue, ..}
instance Property "Value" ListenerAttributeProperty where
  type PropertyType "Value" ListenerAttributeProperty = Value Prelude.Text
  set newValue ListenerAttributeProperty {..}
    = ListenerAttributeProperty {value = Prelude.pure newValue, ..}