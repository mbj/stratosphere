module Stratosphere.ElasticLoadBalancingV2.ListenerRule.HostHeaderConfigProperty (
        HostHeaderConfigProperty(..), mkHostHeaderConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HostHeaderConfigProperty
  = HostHeaderConfigProperty {values :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkHostHeaderConfigProperty :: HostHeaderConfigProperty
mkHostHeaderConfigProperty
  = HostHeaderConfigProperty {values = Prelude.Nothing}
instance ToResourceProperties HostHeaderConfigProperty where
  toResourceProperties HostHeaderConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule.HostHeaderConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON HostHeaderConfigProperty where
  toJSON HostHeaderConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values]))
instance Property "Values" HostHeaderConfigProperty where
  type PropertyType "Values" HostHeaderConfigProperty = ValueList (Value Prelude.Text)
  set newValue HostHeaderConfigProperty {}
    = HostHeaderConfigProperty {values = Prelude.pure newValue, ..}