{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html

module Stratosphere.Resources.WAFv2RegexPatternSet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RegexPatternSetRegexPatternSet
import Stratosphere.ResourceProperties.WAFv2RegexPatternSetRegexPatternSets
import Stratosphere.ResourceProperties.WAFv2RegexPatternSetRegularExpressionList
import Stratosphere.ResourceProperties.WAFv2RegexPatternSetRegexPatternSetSummary
import Stratosphere.ResourceProperties.WAFv2RegexPatternSetTagList

-- | Full data type definition for WAFv2RegexPatternSet. See
-- 'waFv2RegexPatternSet' for a more convenient constructor.
data WAFv2RegexPatternSet =
  WAFv2RegexPatternSet
  { _wAFv2RegexPatternSetDescription :: Maybe (Val Text)
  , _wAFv2RegexPatternSetId :: Maybe (Val Text)
  , _wAFv2RegexPatternSetLimit :: Maybe (Val Integer)
  , _wAFv2RegexPatternSetLockToken :: Maybe (Val Text)
  , _wAFv2RegexPatternSetName :: Val Text
  , _wAFv2RegexPatternSetNextLockToken :: Maybe (Val Text)
  , _wAFv2RegexPatternSetNextMarker :: Maybe (Val Text)
  , _wAFv2RegexPatternSetRegexPatternSet :: Maybe WAFv2RegexPatternSetRegexPatternSet
  , _wAFv2RegexPatternSetRegexPatternSets :: Maybe WAFv2RegexPatternSetRegexPatternSets
  , _wAFv2RegexPatternSetRegularExpressionList :: Maybe WAFv2RegexPatternSetRegularExpressionList
  , _wAFv2RegexPatternSetScope :: Val Text
  , _wAFv2RegexPatternSetSummary :: Maybe WAFv2RegexPatternSetRegexPatternSetSummary
  , _wAFv2RegexPatternSetTags :: Maybe WAFv2RegexPatternSetTagList
  } deriving (Show, Eq)

instance ToResourceProperties WAFv2RegexPatternSet where
  toResourceProperties WAFv2RegexPatternSet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAFv2::RegexPatternSet"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _wAFv2RegexPatternSetDescription
        , fmap (("Id",) . toJSON) _wAFv2RegexPatternSetId
        , fmap (("Limit",) . toJSON) _wAFv2RegexPatternSetLimit
        , fmap (("LockToken",) . toJSON) _wAFv2RegexPatternSetLockToken
        , (Just . ("Name",) . toJSON) _wAFv2RegexPatternSetName
        , fmap (("NextLockToken",) . toJSON) _wAFv2RegexPatternSetNextLockToken
        , fmap (("NextMarker",) . toJSON) _wAFv2RegexPatternSetNextMarker
        , fmap (("RegexPatternSet",) . toJSON) _wAFv2RegexPatternSetRegexPatternSet
        , fmap (("RegexPatternSets",) . toJSON) _wAFv2RegexPatternSetRegexPatternSets
        , fmap (("RegularExpressionList",) . toJSON) _wAFv2RegexPatternSetRegularExpressionList
        , (Just . ("Scope",) . toJSON) _wAFv2RegexPatternSetScope
        , fmap (("Summary",) . toJSON) _wAFv2RegexPatternSetSummary
        , fmap (("Tags",) . toJSON) _wAFv2RegexPatternSetTags
        ]
    }

-- | Constructor for 'WAFv2RegexPatternSet' containing required fields as
-- arguments.
waFv2RegexPatternSet
  :: Val Text -- ^ 'wafrpsName'
  -> Val Text -- ^ 'wafrpsScope'
  -> WAFv2RegexPatternSet
waFv2RegexPatternSet namearg scopearg =
  WAFv2RegexPatternSet
  { _wAFv2RegexPatternSetDescription = Nothing
  , _wAFv2RegexPatternSetId = Nothing
  , _wAFv2RegexPatternSetLimit = Nothing
  , _wAFv2RegexPatternSetLockToken = Nothing
  , _wAFv2RegexPatternSetName = namearg
  , _wAFv2RegexPatternSetNextLockToken = Nothing
  , _wAFv2RegexPatternSetNextMarker = Nothing
  , _wAFv2RegexPatternSetRegexPatternSet = Nothing
  , _wAFv2RegexPatternSetRegexPatternSets = Nothing
  , _wAFv2RegexPatternSetRegularExpressionList = Nothing
  , _wAFv2RegexPatternSetScope = scopearg
  , _wAFv2RegexPatternSetSummary = Nothing
  , _wAFv2RegexPatternSetTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-description
wafrpsDescription :: Lens' WAFv2RegexPatternSet (Maybe (Val Text))
wafrpsDescription = lens _wAFv2RegexPatternSetDescription (\s a -> s { _wAFv2RegexPatternSetDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-id
wafrpsId :: Lens' WAFv2RegexPatternSet (Maybe (Val Text))
wafrpsId = lens _wAFv2RegexPatternSetId (\s a -> s { _wAFv2RegexPatternSetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-limit
wafrpsLimit :: Lens' WAFv2RegexPatternSet (Maybe (Val Integer))
wafrpsLimit = lens _wAFv2RegexPatternSetLimit (\s a -> s { _wAFv2RegexPatternSetLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-locktoken
wafrpsLockToken :: Lens' WAFv2RegexPatternSet (Maybe (Val Text))
wafrpsLockToken = lens _wAFv2RegexPatternSetLockToken (\s a -> s { _wAFv2RegexPatternSetLockToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-name
wafrpsName :: Lens' WAFv2RegexPatternSet (Val Text)
wafrpsName = lens _wAFv2RegexPatternSetName (\s a -> s { _wAFv2RegexPatternSetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-nextlocktoken
wafrpsNextLockToken :: Lens' WAFv2RegexPatternSet (Maybe (Val Text))
wafrpsNextLockToken = lens _wAFv2RegexPatternSetNextLockToken (\s a -> s { _wAFv2RegexPatternSetNextLockToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-nextmarker
wafrpsNextMarker :: Lens' WAFv2RegexPatternSet (Maybe (Val Text))
wafrpsNextMarker = lens _wAFv2RegexPatternSetNextMarker (\s a -> s { _wAFv2RegexPatternSetNextMarker = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-regexpatternset
wafrpsRegexPatternSet :: Lens' WAFv2RegexPatternSet (Maybe WAFv2RegexPatternSetRegexPatternSet)
wafrpsRegexPatternSet = lens _wAFv2RegexPatternSetRegexPatternSet (\s a -> s { _wAFv2RegexPatternSetRegexPatternSet = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-regexpatternsets
wafrpsRegexPatternSets :: Lens' WAFv2RegexPatternSet (Maybe WAFv2RegexPatternSetRegexPatternSets)
wafrpsRegexPatternSets = lens _wAFv2RegexPatternSetRegexPatternSets (\s a -> s { _wAFv2RegexPatternSetRegexPatternSets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-regularexpressionlist
wafrpsRegularExpressionList :: Lens' WAFv2RegexPatternSet (Maybe WAFv2RegexPatternSetRegularExpressionList)
wafrpsRegularExpressionList = lens _wAFv2RegexPatternSetRegularExpressionList (\s a -> s { _wAFv2RegexPatternSetRegularExpressionList = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-scope
wafrpsScope :: Lens' WAFv2RegexPatternSet (Val Text)
wafrpsScope = lens _wAFv2RegexPatternSetScope (\s a -> s { _wAFv2RegexPatternSetScope = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-summary
wafrpsSummary :: Lens' WAFv2RegexPatternSet (Maybe WAFv2RegexPatternSetRegexPatternSetSummary)
wafrpsSummary = lens _wAFv2RegexPatternSetSummary (\s a -> s { _wAFv2RegexPatternSetSummary = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-regexpatternset.html#cfn-wafv2-regexpatternset-tags
wafrpsTags :: Lens' WAFv2RegexPatternSet (Maybe WAFv2RegexPatternSetTagList)
wafrpsTags = lens _wAFv2RegexPatternSetTags (\s a -> s { _wAFv2RegexPatternSetTags = a })
