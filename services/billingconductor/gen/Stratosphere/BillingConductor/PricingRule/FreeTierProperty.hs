module Stratosphere.BillingConductor.PricingRule.FreeTierProperty (
        FreeTierProperty(..), mkFreeTierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FreeTierProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-pricingrule-freetier.html>
    FreeTierProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-pricingrule-freetier.html#cfn-billingconductor-pricingrule-freetier-activated>
                      activated :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFreeTierProperty :: Value Prelude.Bool -> FreeTierProperty
mkFreeTierProperty activated
  = FreeTierProperty
      {haddock_workaround_ = (), activated = activated}
instance ToResourceProperties FreeTierProperty where
  toResourceProperties FreeTierProperty {..}
    = ResourceProperties
        {awsType = "AWS::BillingConductor::PricingRule.FreeTier",
         supportsTags = Prelude.False,
         properties = ["Activated" JSON..= activated]}
instance JSON.ToJSON FreeTierProperty where
  toJSON FreeTierProperty {..}
    = JSON.object ["Activated" JSON..= activated]
instance Property "Activated" FreeTierProperty where
  type PropertyType "Activated" FreeTierProperty = Value Prelude.Bool
  set newValue FreeTierProperty {..}
    = FreeTierProperty {activated = newValue, ..}