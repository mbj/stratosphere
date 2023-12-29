module Stratosphere.BillingConductor.PricingRule.TieringProperty (
        module Exports, TieringProperty(..), mkTieringProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BillingConductor.PricingRule.FreeTierProperty as Exports
import Stratosphere.ResourceProperties
data TieringProperty
  = TieringProperty {freeTier :: (Prelude.Maybe FreeTierProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTieringProperty :: TieringProperty
mkTieringProperty = TieringProperty {freeTier = Prelude.Nothing}
instance ToResourceProperties TieringProperty where
  toResourceProperties TieringProperty {..}
    = ResourceProperties
        {awsType = "AWS::BillingConductor::PricingRule.Tiering",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "FreeTier" Prelude.<$> freeTier])}
instance JSON.ToJSON TieringProperty where
  toJSON TieringProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "FreeTier" Prelude.<$> freeTier]))
instance Property "FreeTier" TieringProperty where
  type PropertyType "FreeTier" TieringProperty = FreeTierProperty
  set newValue TieringProperty {}
    = TieringProperty {freeTier = Prelude.pure newValue, ..}