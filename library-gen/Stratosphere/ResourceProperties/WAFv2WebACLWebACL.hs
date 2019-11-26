{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-webacl.html

module Stratosphere.ResourceProperties.WAFv2WebACLWebACL where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLRules
import Stratosphere.ResourceProperties.WAFv2WebACLVisibilityConfig

-- | Full data type definition for WAFv2WebACLWebACL. See 'waFv2WebACLWebACL'
-- for a more convenient constructor.
data WAFv2WebACLWebACL =
  WAFv2WebACLWebACL
  { _wAFv2WebACLWebACLARN :: Maybe (Val Text)
  , _wAFv2WebACLWebACLCapacity :: Maybe (Val Integer)
  , _wAFv2WebACLWebACLDescription :: Maybe (Val Text)
  , _wAFv2WebACLWebACLId :: Maybe (Val Text)
  , _wAFv2WebACLWebACLName :: Maybe (Val Text)
  , _wAFv2WebACLWebACLRules :: Maybe WAFv2WebACLRules
  , _wAFv2WebACLWebACLVisibilityConfig :: Maybe WAFv2WebACLVisibilityConfig
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLWebACL where
  toJSON WAFv2WebACLWebACL{..} =
    object $
    catMaybes
    [ fmap (("ARN",) . toJSON) _wAFv2WebACLWebACLARN
    , fmap (("Capacity",) . toJSON) _wAFv2WebACLWebACLCapacity
    , fmap (("Description",) . toJSON) _wAFv2WebACLWebACLDescription
    , fmap (("Id",) . toJSON) _wAFv2WebACLWebACLId
    , fmap (("Name",) . toJSON) _wAFv2WebACLWebACLName
    , fmap (("Rules",) . toJSON) _wAFv2WebACLWebACLRules
    , fmap (("VisibilityConfig",) . toJSON) _wAFv2WebACLWebACLVisibilityConfig
    ]

-- | Constructor for 'WAFv2WebACLWebACL' containing required fields as
-- arguments.
waFv2WebACLWebACL
  :: WAFv2WebACLWebACL
waFv2WebACLWebACL  =
  WAFv2WebACLWebACL
  { _wAFv2WebACLWebACLARN = Nothing
  , _wAFv2WebACLWebACLCapacity = Nothing
  , _wAFv2WebACLWebACLDescription = Nothing
  , _wAFv2WebACLWebACLId = Nothing
  , _wAFv2WebACLWebACLName = Nothing
  , _wAFv2WebACLWebACLRules = Nothing
  , _wAFv2WebACLWebACLVisibilityConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-webacl.html#cfn-wafv2-webacl-webacl-arn
wafwaclwaclARN :: Lens' WAFv2WebACLWebACL (Maybe (Val Text))
wafwaclwaclARN = lens _wAFv2WebACLWebACLARN (\s a -> s { _wAFv2WebACLWebACLARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-webacl.html#cfn-wafv2-webacl-webacl-capacity
wafwaclwaclCapacity :: Lens' WAFv2WebACLWebACL (Maybe (Val Integer))
wafwaclwaclCapacity = lens _wAFv2WebACLWebACLCapacity (\s a -> s { _wAFv2WebACLWebACLCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-webacl.html#cfn-wafv2-webacl-webacl-description
wafwaclwaclDescription :: Lens' WAFv2WebACLWebACL (Maybe (Val Text))
wafwaclwaclDescription = lens _wAFv2WebACLWebACLDescription (\s a -> s { _wAFv2WebACLWebACLDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-webacl.html#cfn-wafv2-webacl-webacl-id
wafwaclwaclId :: Lens' WAFv2WebACLWebACL (Maybe (Val Text))
wafwaclwaclId = lens _wAFv2WebACLWebACLId (\s a -> s { _wAFv2WebACLWebACLId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-webacl.html#cfn-wafv2-webacl-webacl-name
wafwaclwaclName :: Lens' WAFv2WebACLWebACL (Maybe (Val Text))
wafwaclwaclName = lens _wAFv2WebACLWebACLName (\s a -> s { _wAFv2WebACLWebACLName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-webacl.html#cfn-wafv2-webacl-webacl-rules
wafwaclwaclRules :: Lens' WAFv2WebACLWebACL (Maybe WAFv2WebACLRules)
wafwaclwaclRules = lens _wAFv2WebACLWebACLRules (\s a -> s { _wAFv2WebACLWebACLRules = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-webacl.html#cfn-wafv2-webacl-webacl-visibilityconfig
wafwaclwaclVisibilityConfig :: Lens' WAFv2WebACLWebACL (Maybe WAFv2WebACLVisibilityConfig)
wafwaclwaclVisibilityConfig = lens _wAFv2WebACLWebACLVisibilityConfig (\s a -> s { _wAFv2WebACLWebACLVisibilityConfig = a })
