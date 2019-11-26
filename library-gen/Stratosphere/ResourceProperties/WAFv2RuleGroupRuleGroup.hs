{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rulegroup.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupRuleGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupRules
import Stratosphere.ResourceProperties.WAFv2RuleGroupVisibilityConfig

-- | Full data type definition for WAFv2RuleGroupRuleGroup. See
-- 'waFv2RuleGroupRuleGroup' for a more convenient constructor.
data WAFv2RuleGroupRuleGroup =
  WAFv2RuleGroupRuleGroup
  { _wAFv2RuleGroupRuleGroupARN :: Maybe (Val Text)
  , _wAFv2RuleGroupRuleGroupCapacity :: Maybe (Val Integer)
  , _wAFv2RuleGroupRuleGroupDescription :: Maybe (Val Text)
  , _wAFv2RuleGroupRuleGroupId :: Maybe (Val Text)
  , _wAFv2RuleGroupRuleGroupName :: Maybe (Val Text)
  , _wAFv2RuleGroupRuleGroupRules :: Maybe WAFv2RuleGroupRules
  , _wAFv2RuleGroupRuleGroupVisibilityConfig :: Maybe WAFv2RuleGroupVisibilityConfig
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupRuleGroup where
  toJSON WAFv2RuleGroupRuleGroup{..} =
    object $
    catMaybes
    [ fmap (("ARN",) . toJSON) _wAFv2RuleGroupRuleGroupARN
    , fmap (("Capacity",) . toJSON) _wAFv2RuleGroupRuleGroupCapacity
    , fmap (("Description",) . toJSON) _wAFv2RuleGroupRuleGroupDescription
    , fmap (("Id",) . toJSON) _wAFv2RuleGroupRuleGroupId
    , fmap (("Name",) . toJSON) _wAFv2RuleGroupRuleGroupName
    , fmap (("Rules",) . toJSON) _wAFv2RuleGroupRuleGroupRules
    , fmap (("VisibilityConfig",) . toJSON) _wAFv2RuleGroupRuleGroupVisibilityConfig
    ]

-- | Constructor for 'WAFv2RuleGroupRuleGroup' containing required fields as
-- arguments.
waFv2RuleGroupRuleGroup
  :: WAFv2RuleGroupRuleGroup
waFv2RuleGroupRuleGroup  =
  WAFv2RuleGroupRuleGroup
  { _wAFv2RuleGroupRuleGroupARN = Nothing
  , _wAFv2RuleGroupRuleGroupCapacity = Nothing
  , _wAFv2RuleGroupRuleGroupDescription = Nothing
  , _wAFv2RuleGroupRuleGroupId = Nothing
  , _wAFv2RuleGroupRuleGroupName = Nothing
  , _wAFv2RuleGroupRuleGroupRules = Nothing
  , _wAFv2RuleGroupRuleGroupVisibilityConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rulegroup.html#cfn-wafv2-rulegroup-rulegroup-arn
wafrgrgARN :: Lens' WAFv2RuleGroupRuleGroup (Maybe (Val Text))
wafrgrgARN = lens _wAFv2RuleGroupRuleGroupARN (\s a -> s { _wAFv2RuleGroupRuleGroupARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rulegroup.html#cfn-wafv2-rulegroup-rulegroup-capacity
wafrgrgCapacity :: Lens' WAFv2RuleGroupRuleGroup (Maybe (Val Integer))
wafrgrgCapacity = lens _wAFv2RuleGroupRuleGroupCapacity (\s a -> s { _wAFv2RuleGroupRuleGroupCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rulegroup.html#cfn-wafv2-rulegroup-rulegroup-description
wafrgrgDescription :: Lens' WAFv2RuleGroupRuleGroup (Maybe (Val Text))
wafrgrgDescription = lens _wAFv2RuleGroupRuleGroupDescription (\s a -> s { _wAFv2RuleGroupRuleGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rulegroup.html#cfn-wafv2-rulegroup-rulegroup-id
wafrgrgId :: Lens' WAFv2RuleGroupRuleGroup (Maybe (Val Text))
wafrgrgId = lens _wAFv2RuleGroupRuleGroupId (\s a -> s { _wAFv2RuleGroupRuleGroupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rulegroup.html#cfn-wafv2-rulegroup-rulegroup-name
wafrgrgName :: Lens' WAFv2RuleGroupRuleGroup (Maybe (Val Text))
wafrgrgName = lens _wAFv2RuleGroupRuleGroupName (\s a -> s { _wAFv2RuleGroupRuleGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rulegroup.html#cfn-wafv2-rulegroup-rulegroup-rules
wafrgrgRules :: Lens' WAFv2RuleGroupRuleGroup (Maybe WAFv2RuleGroupRules)
wafrgrgRules = lens _wAFv2RuleGroupRuleGroupRules (\s a -> s { _wAFv2RuleGroupRuleGroupRules = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rulegroup.html#cfn-wafv2-rulegroup-rulegroup-visibilityconfig
wafrgrgVisibilityConfig :: Lens' WAFv2RuleGroupRuleGroup (Maybe WAFv2RuleGroupVisibilityConfig)
wafrgrgVisibilityConfig = lens _wAFv2RuleGroupRuleGroupVisibilityConfig (\s a -> s { _wAFv2RuleGroupRuleGroupVisibilityConfig = a })
