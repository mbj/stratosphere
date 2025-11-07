module Stratosphere.ElasticLoadBalancingV2.ListenerRule.HttpHeaderConfigProperty (
        HttpHeaderConfigProperty(..), mkHttpHeaderConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpHeaderConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-httpheaderconfig.html>
    HttpHeaderConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-httpheaderconfig.html#cfn-elasticloadbalancingv2-listenerrule-httpheaderconfig-httpheadername>
                              httpHeaderName :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-httpheaderconfig.html#cfn-elasticloadbalancingv2-listenerrule-httpheaderconfig-regexvalues>
                              regexValues :: (Prelude.Maybe (ValueList Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-httpheaderconfig.html#cfn-elasticloadbalancingv2-listenerrule-httpheaderconfig-values>
                              values :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpHeaderConfigProperty :: HttpHeaderConfigProperty
mkHttpHeaderConfigProperty
  = HttpHeaderConfigProperty
      {haddock_workaround_ = (), httpHeaderName = Prelude.Nothing,
       regexValues = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties HttpHeaderConfigProperty where
  toResourceProperties HttpHeaderConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule.HttpHeaderConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HttpHeaderName" Prelude.<$> httpHeaderName,
                            (JSON..=) "RegexValues" Prelude.<$> regexValues,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON HttpHeaderConfigProperty where
  toJSON HttpHeaderConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HttpHeaderName" Prelude.<$> httpHeaderName,
               (JSON..=) "RegexValues" Prelude.<$> regexValues,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "HttpHeaderName" HttpHeaderConfigProperty where
  type PropertyType "HttpHeaderName" HttpHeaderConfigProperty = Value Prelude.Text
  set newValue HttpHeaderConfigProperty {..}
    = HttpHeaderConfigProperty
        {httpHeaderName = Prelude.pure newValue, ..}
instance Property "RegexValues" HttpHeaderConfigProperty where
  type PropertyType "RegexValues" HttpHeaderConfigProperty = ValueList Prelude.Text
  set newValue HttpHeaderConfigProperty {..}
    = HttpHeaderConfigProperty
        {regexValues = Prelude.pure newValue, ..}
instance Property "Values" HttpHeaderConfigProperty where
  type PropertyType "Values" HttpHeaderConfigProperty = ValueList Prelude.Text
  set newValue HttpHeaderConfigProperty {..}
    = HttpHeaderConfigProperty {values = Prelude.pure newValue, ..}