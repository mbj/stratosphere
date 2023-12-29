module Stratosphere.BillingConductor.PricingRule.FreeTierProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FreeTierProperty :: Prelude.Type
instance ToResourceProperties FreeTierProperty
instance Prelude.Eq FreeTierProperty
instance Prelude.Show FreeTierProperty
instance JSON.ToJSON FreeTierProperty