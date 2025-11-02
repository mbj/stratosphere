module Stratosphere.BillingConductor.BillingGroup.ComputationPreferenceProperty (
        ComputationPreferenceProperty(..), mkComputationPreferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComputationPreferenceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-billinggroup-computationpreference.html>
    ComputationPreferenceProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-billingconductor-billinggroup-computationpreference.html#cfn-billingconductor-billinggroup-computationpreference-pricingplanarn>
                                   pricingPlanArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComputationPreferenceProperty ::
  Value Prelude.Text -> ComputationPreferenceProperty
mkComputationPreferenceProperty pricingPlanArn
  = ComputationPreferenceProperty
      {haddock_workaround_ = (), pricingPlanArn = pricingPlanArn}
instance ToResourceProperties ComputationPreferenceProperty where
  toResourceProperties ComputationPreferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::BillingConductor::BillingGroup.ComputationPreference",
         supportsTags = Prelude.False,
         properties = ["PricingPlanArn" JSON..= pricingPlanArn]}
instance JSON.ToJSON ComputationPreferenceProperty where
  toJSON ComputationPreferenceProperty {..}
    = JSON.object ["PricingPlanArn" JSON..= pricingPlanArn]
instance Property "PricingPlanArn" ComputationPreferenceProperty where
  type PropertyType "PricingPlanArn" ComputationPreferenceProperty = Value Prelude.Text
  set newValue ComputationPreferenceProperty {..}
    = ComputationPreferenceProperty {pricingPlanArn = newValue, ..}