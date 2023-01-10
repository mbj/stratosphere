
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-sourcebundle.html

module Stratosphere.ResourceProperties.ElasticBeanstalkApplicationVersionSourceBundle where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticBeanstalkApplicationVersionSourceBundle. See
-- 'elasticBeanstalkApplicationVersionSourceBundle' for a more convenient
-- constructor.
data ElasticBeanstalkApplicationVersionSourceBundle =
  ElasticBeanstalkApplicationVersionSourceBundle
  { _elasticBeanstalkApplicationVersionSourceBundleS3Bucket :: Val Text
  , _elasticBeanstalkApplicationVersionSourceBundleS3Key :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticBeanstalkApplicationVersionSourceBundle where
  toJSON ElasticBeanstalkApplicationVersionSourceBundle{..} =
    object $
    catMaybes
    [ (Just . ("S3Bucket",) . toJSON) _elasticBeanstalkApplicationVersionSourceBundleS3Bucket
    , (Just . ("S3Key",) . toJSON) _elasticBeanstalkApplicationVersionSourceBundleS3Key
    ]

-- | Constructor for 'ElasticBeanstalkApplicationVersionSourceBundle'
-- containing required fields as arguments.
elasticBeanstalkApplicationVersionSourceBundle
  :: Val Text -- ^ 'ebavsbS3Bucket'
  -> Val Text -- ^ 'ebavsbS3Key'
  -> ElasticBeanstalkApplicationVersionSourceBundle
elasticBeanstalkApplicationVersionSourceBundle s3Bucketarg s3Keyarg =
  ElasticBeanstalkApplicationVersionSourceBundle
  { _elasticBeanstalkApplicationVersionSourceBundleS3Bucket = s3Bucketarg
  , _elasticBeanstalkApplicationVersionSourceBundleS3Key = s3Keyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-sourcebundle.html#cfn-beanstalk-sourcebundle-s3bucket
ebavsbS3Bucket :: Lens' ElasticBeanstalkApplicationVersionSourceBundle (Val Text)
ebavsbS3Bucket = lens _elasticBeanstalkApplicationVersionSourceBundleS3Bucket (\s a -> s { _elasticBeanstalkApplicationVersionSourceBundleS3Bucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-sourcebundle.html#cfn-beanstalk-sourcebundle-s3key
ebavsbS3Key :: Lens' ElasticBeanstalkApplicationVersionSourceBundle (Val Text)
ebavsbS3Key = lens _elasticBeanstalkApplicationVersionSourceBundleS3Key (\s a -> s { _elasticBeanstalkApplicationVersionSourceBundleS3Key = a })
