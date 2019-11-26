{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-ipsetsummary.html

module Stratosphere.ResourceProperties.WAFv2IPSetIPSetSummary where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2IPSetIPSetSummary. See
-- 'waFv2IPSetIPSetSummary' for a more convenient constructor.
data WAFv2IPSetIPSetSummary =
  WAFv2IPSetIPSetSummary
  { _wAFv2IPSetIPSetSummaryARN :: Maybe (Val Text)
  , _wAFv2IPSetIPSetSummaryDescription :: Maybe (Val Text)
  , _wAFv2IPSetIPSetSummaryId :: Maybe (Val Text)
  , _wAFv2IPSetIPSetSummaryLockToken :: Maybe (Val Text)
  , _wAFv2IPSetIPSetSummaryName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON WAFv2IPSetIPSetSummary where
  toJSON WAFv2IPSetIPSetSummary{..} =
    object $
    catMaybes
    [ fmap (("ARN",) . toJSON) _wAFv2IPSetIPSetSummaryARN
    , fmap (("Description",) . toJSON) _wAFv2IPSetIPSetSummaryDescription
    , fmap (("Id",) . toJSON) _wAFv2IPSetIPSetSummaryId
    , fmap (("LockToken",) . toJSON) _wAFv2IPSetIPSetSummaryLockToken
    , fmap (("Name",) . toJSON) _wAFv2IPSetIPSetSummaryName
    ]

-- | Constructor for 'WAFv2IPSetIPSetSummary' containing required fields as
-- arguments.
waFv2IPSetIPSetSummary
  :: WAFv2IPSetIPSetSummary
waFv2IPSetIPSetSummary  =
  WAFv2IPSetIPSetSummary
  { _wAFv2IPSetIPSetSummaryARN = Nothing
  , _wAFv2IPSetIPSetSummaryDescription = Nothing
  , _wAFv2IPSetIPSetSummaryId = Nothing
  , _wAFv2IPSetIPSetSummaryLockToken = Nothing
  , _wAFv2IPSetIPSetSummaryName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-ipsetsummary.html#cfn-wafv2-ipset-ipsetsummary-arn
wafipsipssARN :: Lens' WAFv2IPSetIPSetSummary (Maybe (Val Text))
wafipsipssARN = lens _wAFv2IPSetIPSetSummaryARN (\s a -> s { _wAFv2IPSetIPSetSummaryARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-ipsetsummary.html#cfn-wafv2-ipset-ipsetsummary-description
wafipsipssDescription :: Lens' WAFv2IPSetIPSetSummary (Maybe (Val Text))
wafipsipssDescription = lens _wAFv2IPSetIPSetSummaryDescription (\s a -> s { _wAFv2IPSetIPSetSummaryDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-ipsetsummary.html#cfn-wafv2-ipset-ipsetsummary-id
wafipsipssId :: Lens' WAFv2IPSetIPSetSummary (Maybe (Val Text))
wafipsipssId = lens _wAFv2IPSetIPSetSummaryId (\s a -> s { _wAFv2IPSetIPSetSummaryId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-ipsetsummary.html#cfn-wafv2-ipset-ipsetsummary-locktoken
wafipsipssLockToken :: Lens' WAFv2IPSetIPSetSummary (Maybe (Val Text))
wafipsipssLockToken = lens _wAFv2IPSetIPSetSummaryLockToken (\s a -> s { _wAFv2IPSetIPSetSummaryLockToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-ipsetsummary.html#cfn-wafv2-ipset-ipsetsummary-name
wafipsipssName :: Lens' WAFv2IPSetIPSetSummary (Maybe (Val Text))
wafipsipssName = lens _wAFv2IPSetIPSetSummaryName (\s a -> s { _wAFv2IPSetIPSetSummaryName = a })
