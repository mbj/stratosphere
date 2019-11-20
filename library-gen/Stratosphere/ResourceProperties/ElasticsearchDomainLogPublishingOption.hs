{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-logpublishingoption.html

module Stratosphere.ResourceProperties.ElasticsearchDomainLogPublishingOption where

import Stratosphere.ResourceImports


-- | Full data type definition for ElasticsearchDomainLogPublishingOption. See
-- 'elasticsearchDomainLogPublishingOption' for a more convenient
-- constructor.
data ElasticsearchDomainLogPublishingOption =
  ElasticsearchDomainLogPublishingOption
  { _elasticsearchDomainLogPublishingOptionCloudWatchLogsLogGroupArn :: Maybe (Val Text)
  , _elasticsearchDomainLogPublishingOptionEnabled :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON ElasticsearchDomainLogPublishingOption where
  toJSON ElasticsearchDomainLogPublishingOption{..} =
    object $
    catMaybes
    [ fmap (("CloudWatchLogsLogGroupArn",) . toJSON) _elasticsearchDomainLogPublishingOptionCloudWatchLogsLogGroupArn
    , fmap (("Enabled",) . toJSON) _elasticsearchDomainLogPublishingOptionEnabled
    ]

-- | Constructor for 'ElasticsearchDomainLogPublishingOption' containing
-- required fields as arguments.
elasticsearchDomainLogPublishingOption
  :: ElasticsearchDomainLogPublishingOption
elasticsearchDomainLogPublishingOption  =
  ElasticsearchDomainLogPublishingOption
  { _elasticsearchDomainLogPublishingOptionCloudWatchLogsLogGroupArn = Nothing
  , _elasticsearchDomainLogPublishingOptionEnabled = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-logpublishingoption.html#cfn-elasticsearch-domain-logpublishingoption-cloudwatchlogsloggrouparn
edlpoCloudWatchLogsLogGroupArn :: Lens' ElasticsearchDomainLogPublishingOption (Maybe (Val Text))
edlpoCloudWatchLogsLogGroupArn = lens _elasticsearchDomainLogPublishingOptionCloudWatchLogsLogGroupArn (\s a -> s { _elasticsearchDomainLogPublishingOptionCloudWatchLogsLogGroupArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-logpublishingoption.html#cfn-elasticsearch-domain-logpublishingoption-enabled
edlpoEnabled :: Lens' ElasticsearchDomainLogPublishingOption (Maybe (Val Bool))
edlpoEnabled = lens _elasticsearchDomainLogPublishingOptionEnabled (\s a -> s { _elasticsearchDomainLogPublishingOptionEnabled = a })
