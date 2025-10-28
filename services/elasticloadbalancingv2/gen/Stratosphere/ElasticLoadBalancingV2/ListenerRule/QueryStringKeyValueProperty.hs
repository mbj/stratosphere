module Stratosphere.ElasticLoadBalancingV2.ListenerRule.QueryStringKeyValueProperty (
        QueryStringKeyValueProperty(..), mkQueryStringKeyValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueryStringKeyValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-querystringkeyvalue.html>
    QueryStringKeyValueProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-querystringkeyvalue.html#cfn-elasticloadbalancingv2-listenerrule-querystringkeyvalue-key>
                                 key :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-querystringkeyvalue.html#cfn-elasticloadbalancingv2-listenerrule-querystringkeyvalue-value>
                                 value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueryStringKeyValueProperty :: QueryStringKeyValueProperty
mkQueryStringKeyValueProperty
  = QueryStringKeyValueProperty
      {haddock_workaround_ = (), key = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties QueryStringKeyValueProperty where
  toResourceProperties QueryStringKeyValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule.QueryStringKeyValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON QueryStringKeyValueProperty where
  toJSON QueryStringKeyValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" QueryStringKeyValueProperty where
  type PropertyType "Key" QueryStringKeyValueProperty = Value Prelude.Text
  set newValue QueryStringKeyValueProperty {..}
    = QueryStringKeyValueProperty {key = Prelude.pure newValue, ..}
instance Property "Value" QueryStringKeyValueProperty where
  type PropertyType "Value" QueryStringKeyValueProperty = Value Prelude.Text
  set newValue QueryStringKeyValueProperty {..}
    = QueryStringKeyValueProperty {value = Prelude.pure newValue, ..}