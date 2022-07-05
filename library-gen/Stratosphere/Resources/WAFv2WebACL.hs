{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html

module Stratosphere.Resources.WAFv2WebACL where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLDefaultAction
import Stratosphere.ResourceProperties.WAFv2WebACLRule
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.WAFv2WebACLVisibilityConfig

-- | Full data type definition for WAFv2WebACL. See 'waFv2WebACL' for a more
-- convenient constructor.
data WAFv2WebACL =
  WAFv2WebACL
  { _wAFv2WebACLDefaultAction :: WAFv2WebACLDefaultAction
  , _wAFv2WebACLDescription :: Maybe (Val Text)
  , _wAFv2WebACLName :: Maybe (Val Text)
  , _wAFv2WebACLRules :: Maybe [WAFv2WebACLRule]
  , _wAFv2WebACLScope :: Val Text
  , _wAFv2WebACLTags :: Maybe [Tag]
  , _wAFv2WebACLVisibilityConfig :: WAFv2WebACLVisibilityConfig
  } deriving (Show, Eq)

instance ToResourceProperties WAFv2WebACL where
  toResourceProperties WAFv2WebACL{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAFv2::WebACL"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("DefaultAction",) . toJSON) _wAFv2WebACLDefaultAction
        , fmap (("Description",) . toJSON) _wAFv2WebACLDescription
        , fmap (("Name",) . toJSON) _wAFv2WebACLName
        , fmap (("Rules",) . toJSON) _wAFv2WebACLRules
        , (Just . ("Scope",) . toJSON) _wAFv2WebACLScope
        , fmap (("Tags",) . toJSON) _wAFv2WebACLTags
        , (Just . ("VisibilityConfig",) . toJSON) _wAFv2WebACLVisibilityConfig
        ]
    }

-- | Constructor for 'WAFv2WebACL' containing required fields as arguments.
waFv2WebACL
  :: WAFv2WebACLDefaultAction -- ^ 'wafvwaclDefaultAction'
  -> Val Text -- ^ 'wafvwaclScope'
  -> WAFv2WebACLVisibilityConfig -- ^ 'wafvwaclVisibilityConfig'
  -> WAFv2WebACL
waFv2WebACL defaultActionarg scopearg visibilityConfigarg =
  WAFv2WebACL
  { _wAFv2WebACLDefaultAction = defaultActionarg
  , _wAFv2WebACLDescription = Nothing
  , _wAFv2WebACLName = Nothing
  , _wAFv2WebACLRules = Nothing
  , _wAFv2WebACLScope = scopearg
  , _wAFv2WebACLTags = Nothing
  , _wAFv2WebACLVisibilityConfig = visibilityConfigarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-defaultaction
wafvwaclDefaultAction :: Lens' WAFv2WebACL WAFv2WebACLDefaultAction
wafvwaclDefaultAction = lens _wAFv2WebACLDefaultAction (\s a -> s { _wAFv2WebACLDefaultAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-description
wafvwaclDescription :: Lens' WAFv2WebACL (Maybe (Val Text))
wafvwaclDescription = lens _wAFv2WebACLDescription (\s a -> s { _wAFv2WebACLDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-name
wafvwaclName :: Lens' WAFv2WebACL (Maybe (Val Text))
wafvwaclName = lens _wAFv2WebACLName (\s a -> s { _wAFv2WebACLName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-rules
wafvwaclRules :: Lens' WAFv2WebACL (Maybe [WAFv2WebACLRule])
wafvwaclRules = lens _wAFv2WebACLRules (\s a -> s { _wAFv2WebACLRules = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-scope
wafvwaclScope :: Lens' WAFv2WebACL (Val Text)
wafvwaclScope = lens _wAFv2WebACLScope (\s a -> s { _wAFv2WebACLScope = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-tags
wafvwaclTags :: Lens' WAFv2WebACL (Maybe [Tag])
wafvwaclTags = lens _wAFv2WebACLTags (\s a -> s { _wAFv2WebACLTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-webacl.html#cfn-wafv2-webacl-visibilityconfig
wafvwaclVisibilityConfig :: Lens' WAFv2WebACL WAFv2WebACLVisibilityConfig
wafvwaclVisibilityConfig = lens _wAFv2WebACLVisibilityConfig (\s a -> s { _wAFv2WebACLVisibilityConfig = a })
