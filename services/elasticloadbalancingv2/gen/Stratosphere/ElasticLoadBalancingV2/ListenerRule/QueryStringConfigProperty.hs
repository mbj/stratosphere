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
  = QueryStringConfigProperty {values :: (Prelude.Maybe [QueryStringKeyValueProperty])}
mkQueryStringConfigProperty :: QueryStringConfigProperty
mkQueryStringConfigProperty
  = QueryStringConfigProperty {values = Prelude.Nothing}
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
  set newValue QueryStringConfigProperty {}
    = QueryStringConfigProperty {values = Prelude.pure newValue, ..}