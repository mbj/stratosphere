{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html

module Stratosphere.ResourceProperties.BudgetsBudgetCostTypes where

import Stratosphere.ResourceImports


-- | Full data type definition for BudgetsBudgetCostTypes. See
-- 'budgetsBudgetCostTypes' for a more convenient constructor.
data BudgetsBudgetCostTypes =
  BudgetsBudgetCostTypes
  { _budgetsBudgetCostTypesIncludeCredit :: Maybe (Val Bool)
  , _budgetsBudgetCostTypesIncludeDiscount :: Maybe (Val Bool)
  , _budgetsBudgetCostTypesIncludeOtherSubscription :: Maybe (Val Bool)
  , _budgetsBudgetCostTypesIncludeRecurring :: Maybe (Val Bool)
  , _budgetsBudgetCostTypesIncludeRefund :: Maybe (Val Bool)
  , _budgetsBudgetCostTypesIncludeSubscription :: Maybe (Val Bool)
  , _budgetsBudgetCostTypesIncludeSupport :: Maybe (Val Bool)
  , _budgetsBudgetCostTypesIncludeTax :: Maybe (Val Bool)
  , _budgetsBudgetCostTypesIncludeUpfront :: Maybe (Val Bool)
  , _budgetsBudgetCostTypesUseAmortized :: Maybe (Val Bool)
  , _budgetsBudgetCostTypesUseBlended :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON BudgetsBudgetCostTypes where
  toJSON BudgetsBudgetCostTypes{..} =
    object $
    catMaybes
    [ fmap (("IncludeCredit",) . toJSON . fmap Bool') _budgetsBudgetCostTypesIncludeCredit
    , fmap (("IncludeDiscount",) . toJSON . fmap Bool') _budgetsBudgetCostTypesIncludeDiscount
    , fmap (("IncludeOtherSubscription",) . toJSON . fmap Bool') _budgetsBudgetCostTypesIncludeOtherSubscription
    , fmap (("IncludeRecurring",) . toJSON . fmap Bool') _budgetsBudgetCostTypesIncludeRecurring
    , fmap (("IncludeRefund",) . toJSON . fmap Bool') _budgetsBudgetCostTypesIncludeRefund
    , fmap (("IncludeSubscription",) . toJSON . fmap Bool') _budgetsBudgetCostTypesIncludeSubscription
    , fmap (("IncludeSupport",) . toJSON . fmap Bool') _budgetsBudgetCostTypesIncludeSupport
    , fmap (("IncludeTax",) . toJSON . fmap Bool') _budgetsBudgetCostTypesIncludeTax
    , fmap (("IncludeUpfront",) . toJSON . fmap Bool') _budgetsBudgetCostTypesIncludeUpfront
    , fmap (("UseAmortized",) . toJSON . fmap Bool') _budgetsBudgetCostTypesUseAmortized
    , fmap (("UseBlended",) . toJSON . fmap Bool') _budgetsBudgetCostTypesUseBlended
    ]

-- | Constructor for 'BudgetsBudgetCostTypes' containing required fields as
-- arguments.
budgetsBudgetCostTypes
  :: BudgetsBudgetCostTypes
budgetsBudgetCostTypes  =
  BudgetsBudgetCostTypes
  { _budgetsBudgetCostTypesIncludeCredit = Nothing
  , _budgetsBudgetCostTypesIncludeDiscount = Nothing
  , _budgetsBudgetCostTypesIncludeOtherSubscription = Nothing
  , _budgetsBudgetCostTypesIncludeRecurring = Nothing
  , _budgetsBudgetCostTypesIncludeRefund = Nothing
  , _budgetsBudgetCostTypesIncludeSubscription = Nothing
  , _budgetsBudgetCostTypesIncludeSupport = Nothing
  , _budgetsBudgetCostTypesIncludeTax = Nothing
  , _budgetsBudgetCostTypesIncludeUpfront = Nothing
  , _budgetsBudgetCostTypesUseAmortized = Nothing
  , _budgetsBudgetCostTypesUseBlended = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includecredit
bbctIncludeCredit :: Lens' BudgetsBudgetCostTypes (Maybe (Val Bool))
bbctIncludeCredit = lens _budgetsBudgetCostTypesIncludeCredit (\s a -> s { _budgetsBudgetCostTypesIncludeCredit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includediscount
bbctIncludeDiscount :: Lens' BudgetsBudgetCostTypes (Maybe (Val Bool))
bbctIncludeDiscount = lens _budgetsBudgetCostTypesIncludeDiscount (\s a -> s { _budgetsBudgetCostTypesIncludeDiscount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includeothersubscription
bbctIncludeOtherSubscription :: Lens' BudgetsBudgetCostTypes (Maybe (Val Bool))
bbctIncludeOtherSubscription = lens _budgetsBudgetCostTypesIncludeOtherSubscription (\s a -> s { _budgetsBudgetCostTypesIncludeOtherSubscription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includerecurring
bbctIncludeRecurring :: Lens' BudgetsBudgetCostTypes (Maybe (Val Bool))
bbctIncludeRecurring = lens _budgetsBudgetCostTypesIncludeRecurring (\s a -> s { _budgetsBudgetCostTypesIncludeRecurring = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includerefund
bbctIncludeRefund :: Lens' BudgetsBudgetCostTypes (Maybe (Val Bool))
bbctIncludeRefund = lens _budgetsBudgetCostTypesIncludeRefund (\s a -> s { _budgetsBudgetCostTypesIncludeRefund = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includesubscription
bbctIncludeSubscription :: Lens' BudgetsBudgetCostTypes (Maybe (Val Bool))
bbctIncludeSubscription = lens _budgetsBudgetCostTypesIncludeSubscription (\s a -> s { _budgetsBudgetCostTypesIncludeSubscription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includesupport
bbctIncludeSupport :: Lens' BudgetsBudgetCostTypes (Maybe (Val Bool))
bbctIncludeSupport = lens _budgetsBudgetCostTypesIncludeSupport (\s a -> s { _budgetsBudgetCostTypesIncludeSupport = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includetax
bbctIncludeTax :: Lens' BudgetsBudgetCostTypes (Maybe (Val Bool))
bbctIncludeTax = lens _budgetsBudgetCostTypesIncludeTax (\s a -> s { _budgetsBudgetCostTypesIncludeTax = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-includeupfront
bbctIncludeUpfront :: Lens' BudgetsBudgetCostTypes (Maybe (Val Bool))
bbctIncludeUpfront = lens _budgetsBudgetCostTypesIncludeUpfront (\s a -> s { _budgetsBudgetCostTypesIncludeUpfront = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-useamortized
bbctUseAmortized :: Lens' BudgetsBudgetCostTypes (Maybe (Val Bool))
bbctUseAmortized = lens _budgetsBudgetCostTypesUseAmortized (\s a -> s { _budgetsBudgetCostTypesUseAmortized = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-costtypes.html#cfn-budgets-budget-costtypes-useblended
bbctUseBlended :: Lens' BudgetsBudgetCostTypes (Maybe (Val Bool))
bbctUseBlended = lens _budgetsBudgetCostTypesUseBlended (\s a -> s { _budgetsBudgetCostTypesUseBlended = a })
