module Stratosphere.ElasticLoadBalancingV2.ListenerRule.QueryStringConfigProperty (
        module Exports, QueryStringConfigProperty(..),
        mkQueryStringConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.ListenerRule.QueryStringKeyValueProperty as Exports
import Stratosphere.ResourceProperties
data QueryStringConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-querystringconfig.html>
    QueryStringConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-querystringconfig.html#cfn-elasticloadbalancingv2-listenerrule-querystringconfig-values>
                               values :: (Prelude.Maybe [QueryStringKeyValueProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueryStringConfigProperty :: QueryStringConfigProperty
mkQueryStringConfigProperty
  = QueryStringConfigProperty
      {haddock_workaround_ = (), values = Prelude.Nothing}
instance ToResourceProperties QueryStringConfigProperty where
  toResourceProperties QueryStringConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule.QueryStringConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON QueryStringConfigProperty where
  toJSON QueryStringConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values]))
instance Property "Values" QueryStringConfigProperty where
  type PropertyType "Values" QueryStringConfigProperty = [QueryStringKeyValueProperty]
  set newValue QueryStringConfigProperty {..}
    = QueryStringConfigProperty {values = Prelude.pure newValue, ..}