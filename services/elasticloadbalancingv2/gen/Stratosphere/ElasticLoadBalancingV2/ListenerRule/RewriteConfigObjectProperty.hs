module Stratosphere.ElasticLoadBalancingV2.ListenerRule.RewriteConfigObjectProperty (
        module Exports, RewriteConfigObjectProperty(..),
        mkRewriteConfigObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.ListenerRule.RewriteConfigProperty as Exports
import Stratosphere.ResourceProperties
data RewriteConfigObjectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rewriteconfigobject.html>
    RewriteConfigObjectProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-rewriteconfigobject.html#cfn-elasticloadbalancingv2-listenerrule-rewriteconfigobject-rewrites>
                                 rewrites :: [RewriteConfigProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRewriteConfigObjectProperty ::
  [RewriteConfigProperty] -> RewriteConfigObjectProperty
mkRewriteConfigObjectProperty rewrites
  = RewriteConfigObjectProperty
      {haddock_workaround_ = (), rewrites = rewrites}
instance ToResourceProperties RewriteConfigObjectProperty where
  toResourceProperties RewriteConfigObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule.RewriteConfigObject",
         supportsTags = Prelude.False,
         properties = ["Rewrites" JSON..= rewrites]}
instance JSON.ToJSON RewriteConfigObjectProperty where
  toJSON RewriteConfigObjectProperty {..}
    = JSON.object ["Rewrites" JSON..= rewrites]
instance Property "Rewrites" RewriteConfigObjectProperty where
  type PropertyType "Rewrites" RewriteConfigObjectProperty = [RewriteConfigProperty]
  set newValue RewriteConfigObjectProperty {..}
    = RewriteConfigObjectProperty {rewrites = newValue, ..}