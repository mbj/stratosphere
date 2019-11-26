{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-webaclsummary.html

module Stratosphere.ResourceProperties.WAFv2WebACLWebACLSummary where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2WebACLWebACLSummary. See
-- 'waFv2WebACLWebACLSummary' for a more convenient constructor.
data WAFv2WebACLWebACLSummary =
  WAFv2WebACLWebACLSummary
  { _wAFv2WebACLWebACLSummaryARN :: Maybe (Val Text)
  , _wAFv2WebACLWebACLSummaryDescription :: Maybe (Val Text)
  , _wAFv2WebACLWebACLSummaryId :: Maybe (Val Text)
  , _wAFv2WebACLWebACLSummaryLockToken :: Maybe (Val Text)
  , _wAFv2WebACLWebACLSummaryName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLWebACLSummary where
  toJSON WAFv2WebACLWebACLSummary{..} =
    object $
    catMaybes
    [ fmap (("ARN",) . toJSON) _wAFv2WebACLWebACLSummaryARN
    , fmap (("Description",) . toJSON) _wAFv2WebACLWebACLSummaryDescription
    , fmap (("Id",) . toJSON) _wAFv2WebACLWebACLSummaryId
    , fmap (("LockToken",) . toJSON) _wAFv2WebACLWebACLSummaryLockToken
    , fmap (("Name",) . toJSON) _wAFv2WebACLWebACLSummaryName
    ]

-- | Constructor for 'WAFv2WebACLWebACLSummary' containing required fields as
-- arguments.
waFv2WebACLWebACLSummary
  :: WAFv2WebACLWebACLSummary
waFv2WebACLWebACLSummary  =
  WAFv2WebACLWebACLSummary
  { _wAFv2WebACLWebACLSummaryARN = Nothing
  , _wAFv2WebACLWebACLSummaryDescription = Nothing
  , _wAFv2WebACLWebACLSummaryId = Nothing
  , _wAFv2WebACLWebACLSummaryLockToken = Nothing
  , _wAFv2WebACLWebACLSummaryName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-webaclsummary.html#cfn-wafv2-webacl-webaclsummary-arn
wafwaclwaclsARN :: Lens' WAFv2WebACLWebACLSummary (Maybe (Val Text))
wafwaclwaclsARN = lens _wAFv2WebACLWebACLSummaryARN (\s a -> s { _wAFv2WebACLWebACLSummaryARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-webaclsummary.html#cfn-wafv2-webacl-webaclsummary-description
wafwaclwaclsDescription :: Lens' WAFv2WebACLWebACLSummary (Maybe (Val Text))
wafwaclwaclsDescription = lens _wAFv2WebACLWebACLSummaryDescription (\s a -> s { _wAFv2WebACLWebACLSummaryDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-webaclsummary.html#cfn-wafv2-webacl-webaclsummary-id
wafwaclwaclsId :: Lens' WAFv2WebACLWebACLSummary (Maybe (Val Text))
wafwaclwaclsId = lens _wAFv2WebACLWebACLSummaryId (\s a -> s { _wAFv2WebACLWebACLSummaryId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-webaclsummary.html#cfn-wafv2-webacl-webaclsummary-locktoken
wafwaclwaclsLockToken :: Lens' WAFv2WebACLWebACLSummary (Maybe (Val Text))
wafwaclwaclsLockToken = lens _wAFv2WebACLWebACLSummaryLockToken (\s a -> s { _wAFv2WebACLWebACLSummaryLockToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-webaclsummary.html#cfn-wafv2-webacl-webaclsummary-name
wafwaclwaclsName :: Lens' WAFv2WebACLWebACLSummary (Maybe (Val Text))
wafwaclwaclsName = lens _wAFv2WebACLWebACLSummaryName (\s a -> s { _wAFv2WebACLWebACLSummaryName = a })
