module Stratosphere.ElasticLoadBalancingV2.ListenerRule.PathPatternConfigProperty (
        PathPatternConfigProperty(..), mkPathPatternConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PathPatternConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-pathpatternconfig.html>
    PathPatternConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-pathpatternconfig.html#cfn-elasticloadbalancingv2-listenerrule-pathpatternconfig-regexvalues>
                               regexValues :: (Prelude.Maybe (ValueList Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-pathpatternconfig.html#cfn-elasticloadbalancingv2-listenerrule-pathpatternconfig-values>
                               values :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPathPatternConfigProperty :: PathPatternConfigProperty
mkPathPatternConfigProperty
  = PathPatternConfigProperty
      {haddock_workaround_ = (), regexValues = Prelude.Nothing,
       values = Prelude.Nothing}
instance ToResourceProperties PathPatternConfigProperty where
  toResourceProperties PathPatternConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule.PathPatternConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RegexValues" Prelude.<$> regexValues,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON PathPatternConfigProperty where
  toJSON PathPatternConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RegexValues" Prelude.<$> regexValues,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "RegexValues" PathPatternConfigProperty where
  type PropertyType "RegexValues" PathPatternConfigProperty = ValueList Prelude.Text
  set newValue PathPatternConfigProperty {..}
    = PathPatternConfigProperty
        {regexValues = Prelude.pure newValue, ..}
instance Property "Values" PathPatternConfigProperty where
  type PropertyType "Values" PathPatternConfigProperty = ValueList Prelude.Text
  set newValue PathPatternConfigProperty {..}
    = PathPatternConfigProperty {values = Prelude.pure newValue, ..}