
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cookies.html

module Stratosphere.ResourceProperties.CloudFrontDistributionCookies where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudFrontDistributionCookies. See
-- 'cloudFrontDistributionCookies' for a more convenient constructor.
data CloudFrontDistributionCookies =
  CloudFrontDistributionCookies
  { _cloudFrontDistributionCookiesForward :: Val Text
  , _cloudFrontDistributionCookiesWhitelistedNames :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionCookies where
  toJSON CloudFrontDistributionCookies{..} =
    object $
    catMaybes
    [ (Just . ("Forward",) . toJSON) _cloudFrontDistributionCookiesForward
    , fmap (("WhitelistedNames",) . toJSON) _cloudFrontDistributionCookiesWhitelistedNames
    ]

-- | Constructor for 'CloudFrontDistributionCookies' containing required
-- fields as arguments.
cloudFrontDistributionCookies
  :: Val Text -- ^ 'cfdcForward'
  -> CloudFrontDistributionCookies
cloudFrontDistributionCookies forwardarg =
  CloudFrontDistributionCookies
  { _cloudFrontDistributionCookiesForward = forwardarg
  , _cloudFrontDistributionCookiesWhitelistedNames = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cookies.html#cfn-cloudfront-distribution-cookies-forward
cfdcForward :: Lens' CloudFrontDistributionCookies (Val Text)
cfdcForward = lens _cloudFrontDistributionCookiesForward (\s a -> s { _cloudFrontDistributionCookiesForward = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cookies.html#cfn-cloudfront-distribution-cookies-whitelistednames
cfdcWhitelistedNames :: Lens' CloudFrontDistributionCookies (Maybe (ValList Text))
cfdcWhitelistedNames = lens _cloudFrontDistributionCookiesWhitelistedNames (\s a -> s { _cloudFrontDistributionCookiesWhitelistedNames = a })
