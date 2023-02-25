module Stratosphere.BillingConductor.PricingRule.FreeTierProperty (
        FreeTierProperty(..), mkFreeTierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FreeTierProperty
  = FreeTierProperty {activated :: (Value Prelude.Bool)}
mkFreeTierProperty :: Value Prelude.Bool -> FreeTierProperty
mkFreeTierProperty activated
  = FreeTierProperty {activated = activated}
instance ToResourceProperties FreeTierProperty where
  toResourceProperties FreeTierProperty {..}
    = ResourceProperties
        {awsType = "AWS::BillingConductor::PricingRule.FreeTier",
         properties = ["Activated" JSON..= activated]}
instance JSON.ToJSON FreeTierProperty where
  toJSON FreeTierProperty {..}
    = JSON.object ["Activated" JSON..= activated]
instance Property "Activated" FreeTierProperty where
  type PropertyType "Activated" FreeTierProperty = Value Prelude.Bool
  set newValue FreeTierProperty {}
    = FreeTierProperty {activated = newValue, ..}