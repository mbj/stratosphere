{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ce-costcategory.html

module Stratosphere.Resources.CECostCategory where

import Stratosphere.ResourceImports


-- | Full data type definition for CECostCategory. See 'ceCostCategory' for a
-- more convenient constructor.
data CECostCategory =
  CECostCategory
  { _cECostCategoryName :: Val Text
  , _cECostCategoryRuleVersion :: Val Text
  , _cECostCategoryRules :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties CECostCategory where
  toResourceProperties CECostCategory{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CE::CostCategory"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Name",) . toJSON) _cECostCategoryName
        , (Just . ("RuleVersion",) . toJSON) _cECostCategoryRuleVersion
        , (Just . ("Rules",) . toJSON) _cECostCategoryRules
        ]
    }

-- | Constructor for 'CECostCategory' containing required fields as arguments.
ceCostCategory
  :: Val Text -- ^ 'ceccName'
  -> Val Text -- ^ 'ceccRuleVersion'
  -> Val Text -- ^ 'ceccRules'
  -> CECostCategory
ceCostCategory namearg ruleVersionarg rulesarg =
  CECostCategory
  { _cECostCategoryName = namearg
  , _cECostCategoryRuleVersion = ruleVersionarg
  , _cECostCategoryRules = rulesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ce-costcategory.html#cfn-ce-costcategory-name
ceccName :: Lens' CECostCategory (Val Text)
ceccName = lens _cECostCategoryName (\s a -> s { _cECostCategoryName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ce-costcategory.html#cfn-ce-costcategory-ruleversion
ceccRuleVersion :: Lens' CECostCategory (Val Text)
ceccRuleVersion = lens _cECostCategoryRuleVersion (\s a -> s { _cECostCategoryRuleVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ce-costcategory.html#cfn-ce-costcategory-rules
ceccRules :: Lens' CECostCategory (Val Text)
ceccRules = lens _cECostCategoryRules (\s a -> s { _cECostCategoryRules = a })
