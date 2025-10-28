module Stratosphere.Budgets.Budget.CostTypesProperty (
        CostTypesProperty(..), mkCostTypesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CostTypesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html>
    CostTypesProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includecredit>
                       includeCredit :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includediscount>
                       includeDiscount :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includeothersubscription>
                       includeOtherSubscription :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includerecurring>
                       includeRecurring :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includerefund>
                       includeRefund :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includesubscription>
                       includeSubscription :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includesupport>
                       includeSupport :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includetax>
                       includeTax :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includeupfront>
                       includeUpfront :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-useamortized>
                       useAmortized :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-useblended>
                       useBlended :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCostTypesProperty :: CostTypesProperty
mkCostTypesProperty
  = CostTypesProperty
      {haddock_workaround_ = (), includeCredit = Prelude.Nothing,
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