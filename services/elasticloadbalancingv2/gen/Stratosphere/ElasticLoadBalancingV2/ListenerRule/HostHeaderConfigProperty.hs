module Stratosphere.ElasticLoadBalancingV2.ListenerRule.HostHeaderConfigProperty (
        HostHeaderConfigProperty(..), mkHostHeaderConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HostHeaderConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-hostheaderconfig.html>
    HostHeaderConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-hostheaderconfig.html#cfn-elasticloadbalancingv2-listenerrule-hostheaderconfig-regexvalues>
                              regexValues :: (Prelude.Maybe (ValueList Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-hostheaderconfig.html#cfn-elasticloadbalancingv2-listenerrule-hostheaderconfig-values>
                              values :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHostHeaderConfigProperty :: HostHeaderConfigProperty
mkHostHeaderConfigProperty
  = HostHeaderConfigProperty
      {haddock_workaround_ = (), regexValues = Prelude.Nothing,
       values = Prelude.Nothing}
instance ToResourceProperties HostHeaderConfigProperty where
  toResourceProperties HostHeaderConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule.HostHeaderConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RegexValues" Prelude.<$> regexValues,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON HostHeaderConfigProperty where
  toJSON HostHeaderConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RegexValues" Prelude.<$> regexValues,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "RegexValues" HostHeaderConfigProperty where
  type PropertyType "RegexValues" HostHeaderConfigProperty = ValueList Prelude.Text
  set newValue HostHeaderConfigProperty {..}
    = HostHeaderConfigProperty
        {regexValues = Prelude.pure newValue, ..}
instance Property "Values" HostHeaderConfigProperty where
  type PropertyType "Values" HostHeaderConfigProperty = ValueList Prelude.Text
  set newValue HostHeaderConfigProperty {..}
    = HostHeaderConfigProperty {values = Prelude.pure newValue, ..}