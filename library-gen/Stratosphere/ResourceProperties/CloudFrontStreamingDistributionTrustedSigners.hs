{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-trustedsigners.html

module Stratosphere.ResourceProperties.CloudFrontStreamingDistributionTrustedSigners where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


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
    , (Just . ("Enabled",) . toJSON . fmap Bool') _cloudFrontStreamingDistributionTrustedSignersEnabled
    ]

instance FromJSON CloudFrontStreamingDistributionTrustedSigners where
  parseJSON (Object obj) =
    CloudFrontStreamingDistributionTrustedSigners <$>
      (obj .:? "AwsAccountNumbers") <*>
      fmap (fmap unBool') (obj .: "Enabled")
  parseJSON _ = mempty

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
