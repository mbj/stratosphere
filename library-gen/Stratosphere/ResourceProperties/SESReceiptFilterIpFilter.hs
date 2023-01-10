
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-ipfilter.html

module Stratosphere.ResourceProperties.SESReceiptFilterIpFilter where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for SESReceiptFilterIpFilter. See
-- 'sesReceiptFilterIpFilter' for a more convenient constructor.
data SESReceiptFilterIpFilter =
  SESReceiptFilterIpFilter
  { _sESReceiptFilterIpFilterCidr :: Val Text
  , _sESReceiptFilterIpFilterPolicy :: Val Text
  } deriving (Show, Eq)

instance ToJSON SESReceiptFilterIpFilter where
  toJSON SESReceiptFilterIpFilter{..} =
    object $
    catMaybes
    [ (Just . ("Cidr",) . toJSON) _sESReceiptFilterIpFilterCidr
    , (Just . ("Policy",) . toJSON) _sESReceiptFilterIpFilterPolicy
    ]

-- | Constructor for 'SESReceiptFilterIpFilter' containing required fields as
-- arguments.
sesReceiptFilterIpFilter
  :: Val Text -- ^ 'sesrfifCidr'
  -> Val Text -- ^ 'sesrfifPolicy'
  -> SESReceiptFilterIpFilter
sesReceiptFilterIpFilter cidrarg policyarg =
  SESReceiptFilterIpFilter
  { _sESReceiptFilterIpFilterCidr = cidrarg
  , _sESReceiptFilterIpFilterPolicy = policyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-ipfilter.html#cfn-ses-receiptfilter-ipfilter-cidr
sesrfifCidr :: Lens' SESReceiptFilterIpFilter (Val Text)
sesrfifCidr = lens _sESReceiptFilterIpFilterCidr (\s a -> s { _sESReceiptFilterIpFilterCidr = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-ipfilter.html#cfn-ses-receiptfilter-ipfilter-policy
sesrfifPolicy :: Lens' SESReceiptFilterIpFilter (Val Text)
sesrfifPolicy = lens _sESReceiptFilterIpFilterPolicy (\s a -> s { _sESReceiptFilterIpFilterPolicy = a })
