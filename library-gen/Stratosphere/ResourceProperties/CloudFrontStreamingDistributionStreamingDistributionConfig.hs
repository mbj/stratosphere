{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html

module Stratosphere.ResourceProperties.CloudFrontStreamingDistributionStreamingDistributionConfig where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.CloudFrontStreamingDistributionLogging
import Stratosphere.ResourceProperties.CloudFrontStreamingDistributionS3Origin
import Stratosphere.ResourceProperties.CloudFrontStreamingDistributionTrustedSigners

-- | Full data type definition for
-- CloudFrontStreamingDistributionStreamingDistributionConfig. See
-- 'cloudFrontStreamingDistributionStreamingDistributionConfig' for a more
-- convenient constructor.
data CloudFrontStreamingDistributionStreamingDistributionConfig =
  CloudFrontStreamingDistributionStreamingDistributionConfig
  { _cloudFrontStreamingDistributionStreamingDistributionConfigAliases :: Maybe (ValList Text)
  , _cloudFrontStreamingDistributionStreamingDistributionConfigComment :: Val Text
  , _cloudFrontStreamingDistributionStreamingDistributionConfigEnabled :: Val Bool
  , _cloudFrontStreamingDistributionStreamingDistributionConfigLogging :: Maybe CloudFrontStreamingDistributionLogging
  , _cloudFrontStreamingDistributionStreamingDistributionConfigPriceClass :: Maybe (Val Text)
  , _cloudFrontStreamingDistributionStreamingDistributionConfigS3Origin :: CloudFrontStreamingDistributionS3Origin
  , _cloudFrontStreamingDistributionStreamingDistributionConfigTrustedSigners :: CloudFrontStreamingDistributionTrustedSigners
  } deriving (Show, Eq)

instance ToJSON CloudFrontStreamingDistributionStreamingDistributionConfig where
  toJSON CloudFrontStreamingDistributionStreamingDistributionConfig{..} =
    object $
    catMaybes
    [ fmap (("Aliases",) . toJSON) _cloudFrontStreamingDistributionStreamingDistributionConfigAliases
    , (Just . ("Comment",) . toJSON) _cloudFrontStreamingDistributionStreamingDistributionConfigComment
    , (Just . ("Enabled",) . toJSON . fmap Bool') _cloudFrontStreamingDistributionStreamingDistributionConfigEnabled
    , fmap (("Logging",) . toJSON) _cloudFrontStreamingDistributionStreamingDistributionConfigLogging
    , fmap (("PriceClass",) . toJSON) _cloudFrontStreamingDistributionStreamingDistributionConfigPriceClass
    , (Just . ("S3Origin",) . toJSON) _cloudFrontStreamingDistributionStreamingDistributionConfigS3Origin
    , (Just . ("TrustedSigners",) . toJSON) _cloudFrontStreamingDistributionStreamingDistributionConfigTrustedSigners
    ]

instance FromJSON CloudFrontStreamingDistributionStreamingDistributionConfig where
  parseJSON (Object obj) =
    CloudFrontStreamingDistributionStreamingDistributionConfig <$>
      (obj .:? "Aliases") <*>
      (obj .: "Comment") <*>
      fmap (fmap unBool') (obj .: "Enabled") <*>
      (obj .:? "Logging") <*>
      (obj .:? "PriceClass") <*>
      (obj .: "S3Origin") <*>
      (obj .: "TrustedSigners")
  parseJSON _ = mempty

-- | Constructor for
-- 'CloudFrontStreamingDistributionStreamingDistributionConfig' containing
-- required fields as arguments.
cloudFrontStreamingDistributionStreamingDistributionConfig
  :: Val Text -- ^ 'cfsdsdcComment'
  -> Val Bool -- ^ 'cfsdsdcEnabled'
  -> CloudFrontStreamingDistributionS3Origin -- ^ 'cfsdsdcS3Origin'
  -> CloudFrontStreamingDistributionTrustedSigners -- ^ 'cfsdsdcTrustedSigners'
  -> CloudFrontStreamingDistributionStreamingDistributionConfig
cloudFrontStreamingDistributionStreamingDistributionConfig commentarg enabledarg s3Originarg trustedSignersarg =
  CloudFrontStreamingDistributionStreamingDistributionConfig
  { _cloudFrontStreamingDistributionStreamingDistributionConfigAliases = Nothing
  , _cloudFrontStreamingDistributionStreamingDistributionConfigComment = commentarg
  , _cloudFrontStreamingDistributionStreamingDistributionConfigEnabled = enabledarg
  , _cloudFrontStreamingDistributionStreamingDistributionConfigLogging = Nothing
  , _cloudFrontStreamingDistributionStreamingDistributionConfigPriceClass = Nothing
  , _cloudFrontStreamingDistributionStreamingDistributionConfigS3Origin = s3Originarg
  , _cloudFrontStreamingDistributionStreamingDistributionConfigTrustedSigners = trustedSignersarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig-aliases
cfsdsdcAliases :: Lens' CloudFrontStreamingDistributionStreamingDistributionConfig (Maybe (ValList Text))
cfsdsdcAliases = lens _cloudFrontStreamingDistributionStreamingDistributionConfigAliases (\s a -> s { _cloudFrontStreamingDistributionStreamingDistributionConfigAliases = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig-comment
cfsdsdcComment :: Lens' CloudFrontStreamingDistributionStreamingDistributionConfig (Val Text)
cfsdsdcComment = lens _cloudFrontStreamingDistributionStreamingDistributionConfigComment (\s a -> s { _cloudFrontStreamingDistributionStreamingDistributionConfigComment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig-enabled
cfsdsdcEnabled :: Lens' CloudFrontStreamingDistributionStreamingDistributionConfig (Val Bool)
cfsdsdcEnabled = lens _cloudFrontStreamingDistributionStreamingDistributionConfigEnabled (\s a -> s { _cloudFrontStreamingDistributionStreamingDistributionConfigEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig-logging
cfsdsdcLogging :: Lens' CloudFrontStreamingDistributionStreamingDistributionConfig (Maybe CloudFrontStreamingDistributionLogging)
cfsdsdcLogging = lens _cloudFrontStreamingDistributionStreamingDistributionConfigLogging (\s a -> s { _cloudFrontStreamingDistributionStreamingDistributionConfigLogging = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig-priceclass
cfsdsdcPriceClass :: Lens' CloudFrontStreamingDistributionStreamingDistributionConfig (Maybe (Val Text))
cfsdsdcPriceClass = lens _cloudFrontStreamingDistributionStreamingDistributionConfigPriceClass (\s a -> s { _cloudFrontStreamingDistributionStreamingDistributionConfigPriceClass = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig-s3origin
cfsdsdcS3Origin :: Lens' CloudFrontStreamingDistributionStreamingDistributionConfig CloudFrontStreamingDistributionS3Origin
cfsdsdcS3Origin = lens _cloudFrontStreamingDistributionStreamingDistributionConfigS3Origin (\s a -> s { _cloudFrontStreamingDistributionStreamingDistributionConfigS3Origin = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-streamingdistributionconfig.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig-trustedsigners
cfsdsdcTrustedSigners :: Lens' CloudFrontStreamingDistributionStreamingDistributionConfig CloudFrontStreamingDistributionTrustedSigners
cfsdsdcTrustedSigners = lens _cloudFrontStreamingDistributionStreamingDistributionConfigTrustedSigners (\s a -> s { _cloudFrontStreamingDistributionStreamingDistributionConfigTrustedSigners = a })
