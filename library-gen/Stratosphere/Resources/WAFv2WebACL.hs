{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html

module Stratosphere.Resources.WAFv2WebACL where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLRules
import Stratosphere.ResourceProperties.WAFv2WebACLTagList
import Stratosphere.ResourceProperties.WAFv2WebACLVisibilityConfig
import Stratosphere.ResourceProperties.WAFv2WebACLWebACL
import Stratosphere.ResourceProperties.WAFv2WebACLWebACLs
import Stratosphere.ResourceProperties.WAFv2WebACLWebACLSummary

-- | Full data type definition for WAFv2WebACL. See 'waFv2WebACL' for a more
-- convenient constructor.
data WAFv2WebACL =
  WAFv2WebACL
  { _wAFv2WebACLDescription :: Maybe (Val Text)
  , _wAFv2WebACLId :: Maybe (Val Text)
  , _wAFv2WebACLLimit :: Maybe (Val Integer)
  , _wAFv2WebACLLockToken :: Maybe (Val Text)
  , _wAFv2WebACLName :: Val Text
  , _wAFv2WebACLNextLockToken :: Maybe (Val Text)
  , _wAFv2WebACLNextMarker :: Maybe (Val Text)
  , _wAFv2WebACLRules :: Maybe WAFv2WebACLRules
  , _wAFv2WebACLScope :: Val Text
  , _wAFv2WebACLSummary :: Maybe WAFv2WebACLWebACLSummary
  , _wAFv2WebACLTags :: Maybe WAFv2WebACLTagList
  , _wAFv2WebACLVisibilityConfig :: Maybe WAFv2WebACLVisibilityConfig
  , _wAFv2WebACLWebACL :: Maybe WAFv2WebACLWebACL
  , _wAFv2WebACLWebACLs :: Maybe WAFv2WebACLWebACLs
  } deriving (Show, Eq)

instance ToResourceProperties WAFv2WebACL where
  toResourceProperties WAFv2WebACL{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAFv2::WebACL"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _wAFv2WebACLDescription
        , fmap (("Id",) . toJSON) _wAFv2WebACLId
        , fmap (("Limit",) . toJSON) _wAFv2WebACLLimit
        , fmap (("LockToken",) . toJSON) _wAFv2WebACLLockToken
        , (Just . ("Name",) . toJSON) _wAFv2WebACLName
        , fmap (("NextLockToken",) . toJSON) _wAFv2WebACLNextLockToken
        , fmap (("NextMarker",) . toJSON) _wAFv2WebACLNextMarker
        , fmap (("Rules",) . toJSON) _wAFv2WebACLRules
        , (Just . ("Scope",) . toJSON) _wAFv2WebACLScope
        , fmap (("Summary",) . toJSON) _wAFv2WebACLSummary
        , fmap (("Tags",) . toJSON) _wAFv2WebACLTags
        , fmap (("VisibilityConfig",) . toJSON) _wAFv2WebACLVisibilityConfig
        , fmap (("WebACL",) . toJSON) _wAFv2WebACLWebACL
        , fmap (("WebACLs",) . toJSON) _wAFv2WebACLWebACLs
        ]
    }

-- | Constructor for 'WAFv2WebACL' containing required fields as arguments.
waFv2WebACL
  :: Val Text -- ^ 'wafwaclName'
  -> Val Text -- ^ 'wafwaclScope'
  -> WAFv2WebACL
waFv2WebACL namearg scopearg =
  WAFv2WebACL
  { _wAFv2WebACLDescription = Nothing
  , _wAFv2WebACLId = Nothing
  , _wAFv2WebACLLimit = Nothing
  , _wAFv2WebACLLockToken = Nothing
  , _wAFv2WebACLName = namearg
  , _wAFv2WebACLNextLockToken = Nothing
  , _wAFv2WebACLNextMarker = Nothing
  , _wAFv2WebACLRules = Nothing
  , _wAFv2WebACLScope = scopearg
  , _wAFv2WebACLSummary = Nothing
  , _wAFv2WebACLTags = Nothing
  , _wAFv2WebACLVisibilityConfig = Nothing
  , _wAFv2WebACLWebACL = Nothing
  , _wAFv2WebACLWebACLs = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-description
wafwaclDescription :: Lens' WAFv2WebACL (Maybe (Val Text))
wafwaclDescription = lens _wAFv2WebACLDescription (\s a -> s { _wAFv2WebACLDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-id
wafwaclId :: Lens' WAFv2WebACL (Maybe (Val Text))
wafwaclId = lens _wAFv2WebACLId (\s a -> s { _wAFv2WebACLId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-limit
wafwaclLimit :: Lens' WAFv2WebACL (Maybe (Val Integer))
wafwaclLimit = lens _wAFv2WebACLLimit (\s a -> s { _wAFv2WebACLLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-locktoken
wafwaclLockToken :: Lens' WAFv2WebACL (Maybe (Val Text))
wafwaclLockToken = lens _wAFv2WebACLLockToken (\s a -> s { _wAFv2WebACLLockToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-name
wafwaclName :: Lens' WAFv2WebACL (Val Text)
wafwaclName = lens _wAFv2WebACLName (\s a -> s { _wAFv2WebACLName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-nextlocktoken
wafwaclNextLockToken :: Lens' WAFv2WebACL (Maybe (Val Text))
wafwaclNextLockToken = lens _wAFv2WebACLNextLockToken (\s a -> s { _wAFv2WebACLNextLockToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-nextmarker
wafwaclNextMarker :: Lens' WAFv2WebACL (Maybe (Val Text))
wafwaclNextMarker = lens _wAFv2WebACLNextMarker (\s a -> s { _wAFv2WebACLNextMarker = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-rules
wafwaclRules :: Lens' WAFv2WebACL (Maybe WAFv2WebACLRules)
wafwaclRules = lens _wAFv2WebACLRules (\s a -> s { _wAFv2WebACLRules = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-scope
wafwaclScope :: Lens' WAFv2WebACL (Val Text)
wafwaclScope = lens _wAFv2WebACLScope (\s a -> s { _wAFv2WebACLScope = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-summary
wafwaclSummary :: Lens' WAFv2WebACL (Maybe WAFv2WebACLWebACLSummary)
wafwaclSummary = lens _wAFv2WebACLSummary (\s a -> s { _wAFv2WebACLSummary = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-tags
wafwaclTags :: Lens' WAFv2WebACL (Maybe WAFv2WebACLTagList)
wafwaclTags = lens _wAFv2WebACLTags (\s a -> s { _wAFv2WebACLTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-visibilityconfig
wafwaclVisibilityConfig :: Lens' WAFv2WebACL (Maybe WAFv2WebACLVisibilityConfig)
wafwaclVisibilityConfig = lens _wAFv2WebACLVisibilityConfig (\s a -> s { _wAFv2WebACLVisibilityConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-webacl
wafwaclWebACL :: Lens' WAFv2WebACL (Maybe WAFv2WebACLWebACL)
wafwaclWebACL = lens _wAFv2WebACLWebACL (\s a -> s { _wAFv2WebACLWebACL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-webacls
wafwaclWebACLs :: Lens' WAFv2WebACL (Maybe WAFv2WebACLWebACLs)
wafwaclWebACLs = lens _wAFv2WebACLWebACLs (\s a -> s { _wAFv2WebACLWebACLs = a })
