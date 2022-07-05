{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-streamingdistribution.html

module Stratosphere.Resources.CloudFrontStreamingDistribution where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudFrontStreamingDistributionStreamingDistributionConfig
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for CloudFrontStreamingDistribution. See
-- 'cloudFrontStreamingDistribution' for a more convenient constructor.
data CloudFrontStreamingDistribution =
  CloudFrontStreamingDistribution
  { _cloudFrontStreamingDistributionStreamingDistributionConfig :: CloudFrontStreamingDistributionStreamingDistributionConfig
  , _cloudFrontStreamingDistributionTags :: [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties CloudFrontStreamingDistribution where
  toResourceProperties CloudFrontStreamingDistribution{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CloudFront::StreamingDistribution"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("StreamingDistributionConfig",) . toJSON) _cloudFrontStreamingDistributionStreamingDistributionConfig
        , (Just . ("Tags",) . toJSON) _cloudFrontStreamingDistributionTags
        ]
    }

-- | Constructor for 'CloudFrontStreamingDistribution' containing required
-- fields as arguments.
cloudFrontStreamingDistribution
  :: CloudFrontStreamingDistributionStreamingDistributionConfig -- ^ 'cfsdStreamingDistributionConfig'
  -> [Tag] -- ^ 'cfsdTags'
  -> CloudFrontStreamingDistribution
cloudFrontStreamingDistribution streamingDistributionConfigarg tagsarg =
  CloudFrontStreamingDistribution
  { _cloudFrontStreamingDistributionStreamingDistributionConfig = streamingDistributionConfigarg
  , _cloudFrontStreamingDistributionTags = tagsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-streamingdistribution.html#cfn-cloudfront-streamingdistribution-streamingdistributionconfig
cfsdStreamingDistributionConfig :: Lens' CloudFrontStreamingDistribution CloudFrontStreamingDistributionStreamingDistributionConfig
cfsdStreamingDistributionConfig = lens _cloudFrontStreamingDistributionStreamingDistributionConfig (\s a -> s { _cloudFrontStreamingDistributionStreamingDistributionConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-streamingdistribution.html#cfn-cloudfront-streamingdistribution-tags
cfsdTags :: Lens' CloudFrontStreamingDistribution [Tag]
cfsdTags = lens _cloudFrontStreamingDistributionTags (\s a -> s { _cloudFrontStreamingDistributionTags = a })
