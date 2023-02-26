module Stratosphere.ElasticLoadBalancingV2.ListenerRule.SourceIpConfigProperty (
        SourceIpConfigProperty(..), mkSourceIpConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceIpConfigProperty
  = SourceIpConfigProperty {values :: (Prelude.Maybe (ValueList Prelude.Text))}
mkSourceIpConfigProperty :: SourceIpConfigProperty
mkSourceIpConfigProperty
  = SourceIpConfigProperty {values = Prelude.Nothing}
instance ToResourceProperties SourceIpConfigProperty where
  toResourceProperties SourceIpConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule.SourceIpConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON SourceIpConfigProperty where
  toJSON SourceIpConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values]))
instance Property "Values" SourceIpConfigProperty where
  type PropertyType "Values" SourceIpConfigProperty = ValueList Prelude.Text
  set newValue SourceIpConfigProperty {}
    = SourceIpConfigProperty {values = Prelude.pure newValue, ..}