module Stratosphere.WAFv2.RuleGroup.RateLimitLabelNamespaceProperty (
        RateLimitLabelNamespaceProperty(..),
        mkRateLimitLabelNamespaceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RateLimitLabelNamespaceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratelimitlabelnamespace.html>
    RateLimitLabelNamespaceProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratelimitlabelnamespace.html#cfn-wafv2-rulegroup-ratelimitlabelnamespace-namespace>
                                     namespace :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRateLimitLabelNamespaceProperty ::
  Value Prelude.Text -> RateLimitLabelNamespaceProperty
mkRateLimitLabelNamespaceProperty namespace
  = RateLimitLabelNamespaceProperty
      {haddock_workaround_ = (), namespace = namespace}
instance ToResourceProperties RateLimitLabelNamespaceProperty where
  toResourceProperties RateLimitLabelNamespaceProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.RateLimitLabelNamespace",
         supportsTags = Prelude.False,
         properties = ["Namespace" JSON..= namespace]}
instance JSON.ToJSON RateLimitLabelNamespaceProperty where
  toJSON RateLimitLabelNamespaceProperty {..}
    = JSON.object ["Namespace" JSON..= namespace]
instance Property "Namespace" RateLimitLabelNamespaceProperty where
  type PropertyType "Namespace" RateLimitLabelNamespaceProperty = Value Prelude.Text
  set newValue RateLimitLabelNamespaceProperty {..}
    = RateLimitLabelNamespaceProperty {namespace = newValue, ..}