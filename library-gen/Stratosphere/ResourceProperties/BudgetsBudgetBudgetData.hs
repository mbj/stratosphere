{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html

module Stratosphere.ResourceProperties.BudgetsBudgetBudgetData where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.BudgetsBudgetSpend
import Stratosphere.ResourceProperties.BudgetsBudgetCostTypes
import Stratosphere.ResourceProperties.BudgetsBudgetTimePeriod

-- | Full data type definition for BudgetsBudgetBudgetData. See
-- 'budgetsBudgetBudgetData' for a more convenient constructor.
data BudgetsBudgetBudgetData =
  BudgetsBudgetBudgetData
  { _budgetsBudgetBudgetDataBudgetLimit :: Maybe BudgetsBudgetSpend
  , _budgetsBudgetBudgetDataBudgetName :: Maybe (Val Text)
  , _budgetsBudgetBudgetDataBudgetType :: Val Text
  , _budgetsBudgetBudgetDataCostFilters :: Maybe Object
  , _budgetsBudgetBudgetDataCostTypes :: Maybe BudgetsBudgetCostTypes
  , _budgetsBudgetBudgetDataTimePeriod :: Maybe BudgetsBudgetTimePeriod
  , _budgetsBudgetBudgetDataTimeUnit :: Val Text
  } deriving (Show, Eq)

instance ToJSON BudgetsBudgetBudgetData where
  toJSON BudgetsBudgetBudgetData{..} =
    object $
    catMaybes
    [ fmap (("BudgetLimit",) . toJSON) _budgetsBudgetBudgetDataBudgetLimit
    , fmap (("BudgetName",) . toJSON) _budgetsBudgetBudgetDataBudgetName
    , (Just . ("BudgetType",) . toJSON) _budgetsBudgetBudgetDataBudgetType
    , fmap (("CostFilters",) . toJSON) _budgetsBudgetBudgetDataCostFilters
    , fmap (("CostTypes",) . toJSON) _budgetsBudgetBudgetDataCostTypes
    , fmap (("TimePeriod",) . toJSON) _budgetsBudgetBudgetDataTimePeriod
    , (Just . ("TimeUnit",) . toJSON) _budgetsBudgetBudgetDataTimeUnit
    ]

-- | Constructor for 'BudgetsBudgetBudgetData' containing required fields as
-- arguments.
budgetsBudgetBudgetData
  :: Val Text -- ^ 'bbbdBudgetType'
  -> Val Text -- ^ 'bbbdTimeUnit'
  -> BudgetsBudgetBudgetData
budgetsBudgetBudgetData budgetTypearg timeUnitarg =
  BudgetsBudgetBudgetData
  { _budgetsBudgetBudgetDataBudgetLimit = Nothing
  , _budgetsBudgetBudgetDataBudgetName = Nothing
  , _budgetsBudgetBudgetDataBudgetType = budgetTypearg
  , _budgetsBudgetBudgetDataCostFilters = Nothing
  , _budgetsBudgetBudgetDataCostTypes = Nothing
  , _budgetsBudgetBudgetDataTimePeriod = Nothing
  , _budgetsBudgetBudgetDataTimeUnit = timeUnitarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-budgetlimit
bbbdBudgetLimit :: Lens' BudgetsBudgetBudgetData (Maybe BudgetsBudgetSpend)
bbbdBudgetLimit = lens _budgetsBudgetBudgetDataBudgetLimit (\s a -> s { _budgetsBudgetBudgetDataBudgetLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-budgetname
bbbdBudgetName :: Lens' BudgetsBudgetBudgetData (Maybe (Val Text))
bbbdBudgetName = lens _budgetsBudgetBudgetDataBudgetName (\s a -> s { _budgetsBudgetBudgetDataBudgetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-budgettype
bbbdBudgetType :: Lens' BudgetsBudgetBudgetData (Val Text)
bbbdBudgetType = lens _budgetsBudgetBudgetDataBudgetType (\s a -> s { _budgetsBudgetBudgetDataBudgetType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-costfilters
bbbdCostFilters :: Lens' BudgetsBudgetBudgetData (Maybe Object)
bbbdCostFilters = lens _budgetsBudgetBudgetDataCostFilters (\s a -> s { _budgetsBudgetBudgetDataCostFilters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-costtypes
bbbdCostTypes :: Lens' BudgetsBudgetBudgetData (Maybe BudgetsBudgetCostTypes)
bbbdCostTypes = lens _budgetsBudgetBudgetDataCostTypes (\s a -> s { _budgetsBudgetBudgetDataCostTypes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-timeperiod
bbbdTimePeriod :: Lens' BudgetsBudgetBudgetData (Maybe BudgetsBudgetTimePeriod)
bbbdTimePeriod = lens _budgetsBudgetBudgetDataTimePeriod (\s a -> s { _budgetsBudgetBudgetDataTimePeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budget-budgetdata.html#cfn-budgets-budget-budgetdata-timeunit
bbbdTimeUnit :: Lens' BudgetsBudgetBudgetData (Val Text)
bbbdTimeUnit = lens _budgetsBudgetBudgetDataTimeUnit (\s a -> s { _budgetsBudgetBudgetDataTimeUnit = a })
