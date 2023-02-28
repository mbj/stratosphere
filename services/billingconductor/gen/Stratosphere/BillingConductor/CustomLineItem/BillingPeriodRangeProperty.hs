module Stratosphere.BillingConductor.CustomLineItem.BillingPeriodRangeProperty (
        BillingPeriodRangeProperty(..), mkBillingPeriodRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BillingPeriodRangeProperty
  = BillingPeriodRangeProperty {exclusiveEndBillingPeriod :: (Prelude.Maybe (Value Prelude.Text)),
                                inclusiveStartBillingPeriod :: (Prelude.Maybe (Value Prelude.Text))}
mkBillingPeriodRangeProperty :: BillingPeriodRangeProperty
mkBillingPeriodRangeProperty
  = BillingPeriodRangeProperty
      {exclusiveEndBillingPeriod = Prelude.Nothing,
       inclusiveStartBillingPeriod = Prelude.Nothing}
instance ToResourceProperties BillingPeriodRangeProperty where
  toResourceProperties BillingPeriodRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::BillingConductor::CustomLineItem.BillingPeriodRange",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExclusiveEndBillingPeriod"
                              Prelude.<$> exclusiveEndBillingPeriod,
                            (JSON..=) "InclusiveStartBillingPeriod"
                              Prelude.<$> inclusiveStartBillingPeriod])}
instance JSON.ToJSON BillingPeriodRangeProperty where
  toJSON BillingPeriodRangeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExclusiveEndBillingPeriod"
                 Prelude.<$> exclusiveEndBillingPeriod,
               (JSON..=) "InclusiveStartBillingPeriod"
                 Prelude.<$> inclusiveStartBillingPeriod]))
instance Property "ExclusiveEndBillingPeriod" BillingPeriodRangeProperty where
  type PropertyType "ExclusiveEndBillingPeriod" BillingPeriodRangeProperty = Value Prelude.Text
  set newValue BillingPeriodRangeProperty {..}
    = BillingPeriodRangeProperty
        {exclusiveEndBillingPeriod = Prelude.pure newValue, ..}
instance Property "InclusiveStartBillingPeriod" BillingPeriodRangeProperty where
  type PropertyType "InclusiveStartBillingPeriod" BillingPeriodRangeProperty = Value Prelude.Text
  set newValue BillingPeriodRangeProperty {..}
    = BillingPeriodRangeProperty
        {inclusiveStartBillingPeriod = Prelude.pure newValue, ..}