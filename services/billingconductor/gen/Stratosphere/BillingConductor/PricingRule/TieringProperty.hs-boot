module Stratosphere.BillingConductor.PricingRule.TieringProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TieringProperty :: Prelude.Type
instance ToResourceProperties TieringProperty
instance Prelude.Eq TieringProperty
instance Prelude.Show TieringProperty
instance JSON.ToJSON TieringProperty