{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html

module Stratosphere.Resources.WAFv2RuleGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupRule
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.WAFv2RuleGroupVisibilityConfig

-- | Full data type definition for WAFv2RuleGroup. See 'waFv2RuleGroup' for a
-- more convenient constructor.
data WAFv2RuleGroup =
  WAFv2RuleGroup
  { _wAFv2RuleGroupCapacity :: Val Integer
  , _wAFv2RuleGroupDescription :: Maybe (Val Text)
  , _wAFv2RuleGroupName :: Maybe (Val Text)
  , _wAFv2RuleGroupRules :: Maybe [WAFv2RuleGroupRule]
  , _wAFv2RuleGroupScope :: Val Text
  , _wAFv2RuleGroupTags :: Maybe [Tag]
  , _wAFv2RuleGroupVisibilityConfig :: WAFv2RuleGroupVisibilityConfig
  } deriving (Show, Eq)

instance ToResourceProperties WAFv2RuleGroup where
  toResourceProperties WAFv2RuleGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAFv2::RuleGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Capacity",) . toJSON) _wAFv2RuleGroupCapacity
        , fmap (("Description",) . toJSON) _wAFv2RuleGroupDescription
        , fmap (("Name",) . toJSON) _wAFv2RuleGroupName
        , fmap (("Rules",) . toJSON) _wAFv2RuleGroupRules
        , (Just . ("Scope",) . toJSON) _wAFv2RuleGroupScope
        , fmap (("Tags",) . toJSON) _wAFv2RuleGroupTags
        , (Just . ("VisibilityConfig",) . toJSON) _wAFv2RuleGroupVisibilityConfig
        ]
    }

-- | Constructor for 'WAFv2RuleGroup' containing required fields as arguments.
waFv2RuleGroup
  :: Val Integer -- ^ 'wafrgCapacity'
  -> Val Text -- ^ 'wafrgScope'
  -> WAFv2RuleGroupVisibilityConfig -- ^ 'wafrgVisibilityConfig'
  -> WAFv2RuleGroup
waFv2RuleGroup capacityarg scopearg visibilityConfigarg =
  WAFv2RuleGroup
  { _wAFv2RuleGroupCapacity = capacityarg
  , _wAFv2RuleGroupDescription = Nothing
  , _wAFv2RuleGroupName = Nothing
  , _wAFv2RuleGroupRules = Nothing
  , _wAFv2RuleGroupScope = scopearg
  , _wAFv2RuleGroupTags = Nothing
  , _wAFv2RuleGroupVisibilityConfig = visibilityConfigarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-capacity
wafrgCapacity :: Lens' WAFv2RuleGroup (Val Integer)
wafrgCapacity = lens _wAFv2RuleGroupCapacity (\s a -> s { _wAFv2RuleGroupCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-description
wafrgDescription :: Lens' WAFv2RuleGroup (Maybe (Val Text))
wafrgDescription = lens _wAFv2RuleGroupDescription (\s a -> s { _wAFv2RuleGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-name
wafrgName :: Lens' WAFv2RuleGroup (Maybe (Val Text))
wafrgName = lens _wAFv2RuleGroupName (\s a -> s { _wAFv2RuleGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-rules
wafrgRules :: Lens' WAFv2RuleGroup (Maybe [WAFv2RuleGroupRule])
wafrgRules = lens _wAFv2RuleGroupRules (\s a -> s { _wAFv2RuleGroupRules = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-scope
wafrgScope :: Lens' WAFv2RuleGroup (Val Text)
wafrgScope = lens _wAFv2RuleGroupScope (\s a -> s { _wAFv2RuleGroupScope = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-tags
wafrgTags :: Lens' WAFv2RuleGroup (Maybe [Tag])
wafrgTags = lens _wAFv2RuleGroupTags (\s a -> s { _wAFv2RuleGroupTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-visibilityconfig
wafrgVisibilityConfig :: Lens' WAFv2RuleGroup WAFv2RuleGroupVisibilityConfig
wafrgVisibilityConfig = lens _wAFv2RuleGroupVisibilityConfig (\s a -> s { _wAFv2RuleGroupVisibilityConfig = a })
