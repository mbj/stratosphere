module Stratosphere.Budgets.Budget.CostTypesProperty (
        CostTypesProperty(..), mkCostTypesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CostTypesProperty
  = CostTypesProperty {includeCredit :: (Prelude.Maybe (Value Prelude.Bool)),
                       includeDiscount :: (Prelude.Maybe (Value Prelude.Bool)),
                       includeOtherSubscription :: (Prelude.Maybe (Value Prelude.Bool)),
                       includeRecurring :: (Prelude.Maybe (Value Prelude.Bool)),
                       includeRefund :: (Prelude.Maybe (Value Prelude.Bool)),
                       includeSubscription :: (Prelude.Maybe (Value Prelude.Bool)),
                       includeSupport :: (Prelude.Maybe (Value Prelude.Bool)),
                       includeTax :: (Prelude.Maybe (Value Prelude.Bool)),
                       includeUpfront :: (Prelude.Maybe (Value Prelude.Bool)),
                       useAmortized :: (Prelude.Maybe (Value Prelude.Bool)),
                       useBlended :: (Prelude.Maybe (Value Prelude.Bool))}
mkCostTypesProperty :: CostTypesProperty
mkCostTypesProperty
  = CostTypesProperty
      {includeCredit = Prelude.Nothing,
       includeDiscount = Prelude.Nothing,
       includeOtherSubscription = Prelude.Nothing,
       includeRecurring = Prelude.Nothing,
       includeRefund = Prelude.Nothing,
       includeSubscription = Prelude.Nothing,
       includeSupport = Prelude.Nothing, includeTax = Prelude.Nothing,
       includeUpfront = Prelude.Nothing, useAmortized = Prelude.Nothing,
       useBlended = Prelude.Nothing}
instance ToResourceProperties CostTypesProperty where
  toResourceProperties CostTypesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::Budget.CostTypes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IncludeCredit" Prelude.<$> includeCredit,
                            (JSON..=) "IncludeDiscount" Prelude.<$> includeDiscount,
                            (JSON..=) "IncludeOtherSubscription"
                              Prelude.<$> includeOtherSubscription,
                            (JSON..=) "IncludeRecurring" Prelude.<$> includeRecurring,
                            (JSON..=) "IncludeRefund" Prelude.<$> includeRefund,
                            (JSON..=) "IncludeSubscription" Prelude.<$> includeSubscription,
                            (JSON..=) "IncludeSupport" Prelude.<$> includeSupport,
                            (JSON..=) "IncludeTax" Prelude.<$> includeTax,
                            (JSON..=) "IncludeUpfront" Prelude.<$> includeUpfront,
                            (JSON..=) "UseAmortized" Prelude.<$> useAmortized,
                            (JSON..=) "UseBlended" Prelude.<$> useBlended])}
instance JSON.ToJSON CostTypesProperty where
  toJSON CostTypesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IncludeCredit" Prelude.<$> includeCredit,
               (JSON..=) "IncludeDiscount" Prelude.<$> includeDiscount,
               (JSON..=) "IncludeOtherSubscription"
                 Prelude.<$> includeOtherSubscription,
               (JSON..=) "IncludeRecurring" Prelude.<$> includeRecurring,
               (JSON..=) "IncludeRefund" Prelude.<$> includeRefund,
               (JSON..=) "IncludeSubscription" Prelude.<$> includeSubscription,
               (JSON..=) "IncludeSupport" Prelude.<$> includeSupport,
               (JSON..=) "IncludeTax" Prelude.<$> includeTax,
               (JSON..=) "IncludeUpfront" Prelude.<$> includeUpfront,
               (JSON..=) "UseAmortized" Prelude.<$> useAmortized,
               (JSON..=) "UseBlended" Prelude.<$> useBlended]))
instance Property "IncludeCredit" CostTypesProperty where
  type PropertyType "IncludeCredit" CostTypesProperty = Value Prelude.Bool
  set newValue CostTypesProperty {..}
    = CostTypesProperty {includeCredit = Prelude.pure newValue, ..}
instance Property "IncludeDiscount" CostTypesProperty where
  type PropertyType "IncludeDiscount" CostTypesProperty = Value Prelude.Bool
  set newValue CostTypesProperty {..}
    = CostTypesProperty {includeDiscount = Prelude.pure newValue, ..}
instance Property "IncludeOtherSubscription" CostTypesProperty where
  type PropertyType "IncludeOtherSubscription" CostTypesProperty = Value Prelude.Bool
  set newValue CostTypesProperty {..}
    = CostTypesProperty
        {includeOtherSubscription = Prelude.pure newValue, ..}
instance Property "IncludeRecurring" CostTypesProperty where
  type PropertyType "IncludeRecurring" CostTypesProperty = Value Prelude.Bool
  set newValue CostTypesProperty {..}
    = CostTypesProperty {includeRecurring = Prelude.pure newValue, ..}
instance Property "IncludeRefund" CostTypesProperty where
  type PropertyType "IncludeRefund" CostTypesProperty = Value Prelude.Bool
  set newValue CostTypesProperty {..}
    = CostTypesProperty {includeRefund = Prelude.pure newValue, ..}
instance Property "IncludeSubscription" CostTypesProperty where
  type PropertyType "IncludeSubscription" CostTypesProperty = Value Prelude.Bool
  set newValue CostTypesProperty {..}
    = CostTypesProperty
        {includeSubscription = Prelude.pure newValue, ..}
instance Property "IncludeSupport" CostTypesProperty where
  type PropertyType "IncludeSupport" CostTypesProperty = Value Prelude.Bool
  set newValue CostTypesProperty {..}
    = CostTypesProperty {includeSupport = Prelude.pure newValue, ..}
instance Property "IncludeTax" CostTypesProperty where
  type PropertyType "IncludeTax" CostTypesProperty = Value Prelude.Bool
  set newValue CostTypesProperty {..}
    = CostTypesProperty {includeTax = Prelude.pure newValue, ..}
instance Property "IncludeUpfront" CostTypesProperty where
  type PropertyType "IncludeUpfront" CostTypesProperty = Value Prelude.Bool
  set newValue CostTypesProperty {..}
    = CostTypesProperty {includeUpfront = Prelude.pure newValue, ..}
instance Property "UseAmortized" CostTypesProperty where
  type PropertyType "UseAmortized" CostTypesProperty = Value Prelude.Bool
  set newValue CostTypesProperty {..}
    = CostTypesProperty {useAmortized = Prelude.pure newValue, ..}
instance Property "UseBlended" CostTypesProperty where
  type PropertyType "UseBlended" CostTypesProperty = Value Prelude.Bool
  set newValue CostTypesProperty {..}
    = CostTypesProperty {useBlended = Prelude.pure newValue, ..}