
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-trustedsigners.html

module Stratosphere.ResourceProperties.CloudFrontStreamingDistributionTrustedSigners where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- CloudFrontStreamingDistributionTrustedSigners. See
-- 'cloudFrontStreamingDistributionTrustedSigners' for a more convenient
-- constructor.
data CloudFrontStreamingDistributionTrustedSigners =
  CloudFrontStreamingDistributionTrustedSigners
  { _cloudFrontStreamingDistributionTrustedSignersAwsAccountNumbers :: Maybe (ValList Text)
  , _cloudFrontStreamingDistributionTrustedSignersEnabled :: Val Bool
  } deriving (Show, Eq)

instance ToJSON CloudFrontStreamingDistributionTrustedSigners where
  toJSON CloudFrontStreamingDistributionTrustedSigners{..} =
    object $
    catMaybes
    [ fmap (("AwsAccountNumbers",) . toJSON) _cloudFrontStreamingDistributionTrustedSignersAwsAccountNumbers
    , (Just . ("Enabled",) . toJSON) _cloudFrontStreamingDistributionTrustedSignersEnabled
    ]

-- | Constructor for 'CloudFrontStreamingDistributionTrustedSigners'
-- containing required fields as arguments.
cloudFrontStreamingDistributionTrustedSigners
  :: Val Bool -- ^ 'cfsdtsEnabled'
  -> CloudFrontStreamingDistributionTrustedSigners
cloudFrontStreamingDistributionTrustedSigners enabledarg =
  CloudFrontStreamingDistributionTrustedSigners
  { _cloudFrontStreamingDistributionTrustedSignersAwsAccountNumbers = Nothing
  , _cloudFrontStreamingDistributionTrustedSignersEnabled = enabledarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-trustedsigners.html#cfn-cloudfront-streamingdistribution-trustedsigners-awsaccountnumbers
cfsdtsAwsAccountNumbers :: Lens' CloudFrontStreamingDistributionTrustedSigners (Maybe (ValList Text))
cfsdtsAwsAccountNumbers = lens _cloudFrontStreamingDistributionTrustedSignersAwsAccountNumbers (\s a -> s { _cloudFrontStreamingDistributionTrustedSignersAwsAccountNumbers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-trustedsigners.html#cfn-cloudfront-streamingdistribution-trustedsigners-enabled
cfsdtsEnabled :: Lens' CloudFrontStreamingDistributionTrustedSigners (Val Bool)
cfsdtsEnabled = lens _cloudFrontStreamingDistributionTrustedSignersEnabled (\s a -> s { _cloudFrontStreamingDistributionTrustedSignersEnabled = a })
