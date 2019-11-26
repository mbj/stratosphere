{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html

module Stratosphere.Resources.WAFv2RuleGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupRuleGroup
import Stratosphere.ResourceProperties.WAFv2RuleGroupRuleGroupSummary
import Stratosphere.ResourceProperties.WAFv2RuleGroupRuleGroups
import Stratosphere.ResourceProperties.WAFv2RuleGroupRules
import Stratosphere.ResourceProperties.WAFv2RuleGroupStatementOne
import Stratosphere.ResourceProperties.WAFv2RuleGroupTagList
import Stratosphere.ResourceProperties.WAFv2RuleGroupVisibilityConfig

-- | Full data type definition for WAFv2RuleGroup. See 'waFv2RuleGroup' for a
-- more convenient constructor.
data WAFv2RuleGroup =
  WAFv2RuleGroup
  { _wAFv2RuleGroupCapacity :: Maybe (Val Integer)
  , _wAFv2RuleGroupDescription :: Maybe (Val Text)
  , _wAFv2RuleGroupId :: Maybe (Val Text)
  , _wAFv2RuleGroupLimit :: Maybe (Val Integer)
  , _wAFv2RuleGroupLockToken :: Maybe (Val Text)
  , _wAFv2RuleGroupName :: Val Text
  , _wAFv2RuleGroupNextLockToken :: Maybe (Val Text)
  , _wAFv2RuleGroupNextMarker :: Maybe (Val Text)
  , _wAFv2RuleGroupRuleGroup :: Maybe WAFv2RuleGroupRuleGroup
  , _wAFv2RuleGroupRuleGroupSummary :: Maybe WAFv2RuleGroupRuleGroupSummary
  , _wAFv2RuleGroupRuleGroups :: Maybe WAFv2RuleGroupRuleGroups
  , _wAFv2RuleGroupRules :: Maybe WAFv2RuleGroupRules
  , _wAFv2RuleGroupScope :: Val Text
  , _wAFv2RuleGroupStatement :: Maybe WAFv2RuleGroupStatementOne
  , _wAFv2RuleGroupSummary :: Maybe WAFv2RuleGroupRuleGroupSummary
  , _wAFv2RuleGroupTags :: Maybe WAFv2RuleGroupTagList
  , _wAFv2RuleGroupVisibilityConfig :: Maybe WAFv2RuleGroupVisibilityConfig
  } deriving (Show, Eq)

instance ToResourceProperties WAFv2RuleGroup where
  toResourceProperties WAFv2RuleGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAFv2::RuleGroup"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("Capacity",) . toJSON) _wAFv2RuleGroupCapacity
        , fmap (("Description",) . toJSON) _wAFv2RuleGroupDescription
        , fmap (("Id",) . toJSON) _wAFv2RuleGroupId
        , fmap (("Limit",) . toJSON) _wAFv2RuleGroupLimit
        , fmap (("LockToken",) . toJSON) _wAFv2RuleGroupLockToken
        , (Just . ("Name",) . toJSON) _wAFv2RuleGroupName
        , fmap (("NextLockToken",) . toJSON) _wAFv2RuleGroupNextLockToken
        , fmap (("NextMarker",) . toJSON) _wAFv2RuleGroupNextMarker
        , fmap (("RuleGroup",) . toJSON) _wAFv2RuleGroupRuleGroup
        , fmap (("RuleGroupSummary",) . toJSON) _wAFv2RuleGroupRuleGroupSummary
        , fmap (("RuleGroups",) . toJSON) _wAFv2RuleGroupRuleGroups
        , fmap (("Rules",) . toJSON) _wAFv2RuleGroupRules
        , (Just . ("Scope",) . toJSON) _wAFv2RuleGroupScope
        , fmap (("Statement",) . toJSON) _wAFv2RuleGroupStatement
        , fmap (("Summary",) . toJSON) _wAFv2RuleGroupSummary
        , fmap (("Tags",) . toJSON) _wAFv2RuleGroupTags
        , fmap (("VisibilityConfig",) . toJSON) _wAFv2RuleGroupVisibilityConfig
        ]
    }

-- | Constructor for 'WAFv2RuleGroup' containing required fields as arguments.
waFv2RuleGroup
  :: Val Text -- ^ 'wafrgName'
  -> Val Text -- ^ 'wafrgScope'
  -> WAFv2RuleGroup
waFv2RuleGroup namearg scopearg =
  WAFv2RuleGroup
  { _wAFv2RuleGroupCapacity = Nothing
  , _wAFv2RuleGroupDescription = Nothing
  , _wAFv2RuleGroupId = Nothing
  , _wAFv2RuleGroupLimit = Nothing
  , _wAFv2RuleGroupLockToken = Nothing
  , _wAFv2RuleGroupName = namearg
  , _wAFv2RuleGroupNextLockToken = Nothing
  , _wAFv2RuleGroupNextMarker = Nothing
  , _wAFv2RuleGroupRuleGroup = Nothing
  , _wAFv2RuleGroupRuleGroupSummary = Nothing
  , _wAFv2RuleGroupRuleGroups = Nothing
  , _wAFv2RuleGroupRules = Nothing
  , _wAFv2RuleGroupScope = scopearg
  , _wAFv2RuleGroupStatement = Nothing
  , _wAFv2RuleGroupSummary = Nothing
  , _wAFv2RuleGroupTags = Nothing
  , _wAFv2RuleGroupVisibilityConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-capacity
wafrgCapacity :: Lens' WAFv2RuleGroup (Maybe (Val Integer))
wafrgCapacity = lens _wAFv2RuleGroupCapacity (\s a -> s { _wAFv2RuleGroupCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-description
wafrgDescription :: Lens' WAFv2RuleGroup (Maybe (Val Text))
wafrgDescription = lens _wAFv2RuleGroupDescription (\s a -> s { _wAFv2RuleGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-id
wafrgId :: Lens' WAFv2RuleGroup (Maybe (Val Text))
wafrgId = lens _wAFv2RuleGroupId (\s a -> s { _wAFv2RuleGroupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-limit
wafrgLimit :: Lens' WAFv2RuleGroup (Maybe (Val Integer))
wafrgLimit = lens _wAFv2RuleGroupLimit (\s a -> s { _wAFv2RuleGroupLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-locktoken
wafrgLockToken :: Lens' WAFv2RuleGroup (Maybe (Val Text))
wafrgLockToken = lens _wAFv2RuleGroupLockToken (\s a -> s { _wAFv2RuleGroupLockToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-name
wafrgName :: Lens' WAFv2RuleGroup (Val Text)
wafrgName = lens _wAFv2RuleGroupName (\s a -> s { _wAFv2RuleGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-nextlocktoken
wafrgNextLockToken :: Lens' WAFv2RuleGroup (Maybe (Val Text))
wafrgNextLockToken = lens _wAFv2RuleGroupNextLockToken (\s a -> s { _wAFv2RuleGroupNextLockToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-nextmarker
wafrgNextMarker :: Lens' WAFv2RuleGroup (Maybe (Val Text))
wafrgNextMarker = lens _wAFv2RuleGroupNextMarker (\s a -> s { _wAFv2RuleGroupNextMarker = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-rulegroup
wafrgRuleGroup :: Lens' WAFv2RuleGroup (Maybe WAFv2RuleGroupRuleGroup)
wafrgRuleGroup = lens _wAFv2RuleGroupRuleGroup (\s a -> s { _wAFv2RuleGroupRuleGroup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-rulegroupsummary
wafrgRuleGroupSummary :: Lens' WAFv2RuleGroup (Maybe WAFv2RuleGroupRuleGroupSummary)
wafrgRuleGroupSummary = lens _wAFv2RuleGroupRuleGroupSummary (\s a -> s { _wAFv2RuleGroupRuleGroupSummary = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-rulegroups
wafrgRuleGroups :: Lens' WAFv2RuleGroup (Maybe WAFv2RuleGroupRuleGroups)
wafrgRuleGroups = lens _wAFv2RuleGroupRuleGroups (\s a -> s { _wAFv2RuleGroupRuleGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-rules
wafrgRules :: Lens' WAFv2RuleGroup (Maybe WAFv2RuleGroupRules)
wafrgRules = lens _wAFv2RuleGroupRules (\s a -> s { _wAFv2RuleGroupRules = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-scope
wafrgScope :: Lens' WAFv2RuleGroup (Val Text)
wafrgScope = lens _wAFv2RuleGroupScope (\s a -> s { _wAFv2RuleGroupScope = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-statement
wafrgStatement :: Lens' WAFv2RuleGroup (Maybe WAFv2RuleGroupStatementOne)
wafrgStatement = lens _wAFv2RuleGroupStatement (\s a -> s { _wAFv2RuleGroupStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-summary
wafrgSummary :: Lens' WAFv2RuleGroup (Maybe WAFv2RuleGroupRuleGroupSummary)
wafrgSummary = lens _wAFv2RuleGroupSummary (\s a -> s { _wAFv2RuleGroupSummary = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-tags
wafrgTags :: Lens' WAFv2RuleGroup (Maybe WAFv2RuleGroupTagList)
wafrgTags = lens _wAFv2RuleGroupTags (\s a -> s { _wAFv2RuleGroupTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-visibilityconfig
wafrgVisibilityConfig :: Lens' WAFv2RuleGroup (Maybe WAFv2RuleGroupVisibilityConfig)
wafrgVisibilityConfig = lens _wAFv2RuleGroupVisibilityConfig (\s a -> s { _wAFv2RuleGroupVisibilityConfig = a })
