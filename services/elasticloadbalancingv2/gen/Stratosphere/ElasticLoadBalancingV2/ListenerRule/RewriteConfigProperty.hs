module Stratosphere.ElasticLoadBalancingV2.ListenerRule.RewriteConfigProperty (
        RewriteConfigProperty(..), mkRewriteConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RewriteConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rewriteconfig.html>
    RewriteConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rewriteconfig.html#cfn-elasticloadbalancingv2-listenerrule-rewriteconfig-regex>
                           regex :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rewriteconfig.html#cfn-elasticloadbalancingv2-listenerrule-rewriteconfig-replace>
                           replace :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRewriteConfigProperty ::
  Value Prelude.Text -> Value Prelude.Text -> RewriteConfigProperty
mkRewriteConfigProperty regex replace
  = RewriteConfigProperty
      {haddock_workaround_ = (), regex = regex, replace = replace}
instance ToResourceProperties RewriteConfigProperty where
  toResourceProperties RewriteConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule.RewriteConfig",
         supportsTags = Prelude.False,
         properties = ["Regex" JSON..= regex, "Replace" JSON..= replace]}
instance JSON.ToJSON RewriteConfigProperty where
  toJSON RewriteConfigProperty {..}
    = JSON.object ["Regex" JSON..= regex, "Replace" JSON..= replace]
instance Property "Regex" RewriteConfigProperty where
  type PropertyType "Regex" RewriteConfigProperty = Value Prelude.Text
  set newValue RewriteConfigProperty {..}
    = RewriteConfigProperty {regex = newValue, ..}
instance Property "Replace" RewriteConfigProperty where
  type PropertyType "Replace" RewriteConfigProperty = Value Prelude.Text
  set newValue RewriteConfigProperty {..}
    = RewriteConfigProperty {replace = newValue, ..}