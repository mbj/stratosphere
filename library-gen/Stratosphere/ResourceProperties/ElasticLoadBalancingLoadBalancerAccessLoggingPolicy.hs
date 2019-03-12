{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-accessloggingpolicy.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerAccessLoggingPolicy where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingLoadBalancerAccessLoggingPolicy. See
-- 'elasticLoadBalancingLoadBalancerAccessLoggingPolicy' for a more
-- convenient constructor.
data ElasticLoadBalancingLoadBalancerAccessLoggingPolicy =
  ElasticLoadBalancingLoadBalancerAccessLoggingPolicy
  { _elasticLoadBalancingLoadBalancerAccessLoggingPolicyEmitInterval :: Maybe (Val Integer)
  , _elasticLoadBalancingLoadBalancerAccessLoggingPolicyEnabled :: Val Bool
  , _elasticLoadBalancingLoadBalancerAccessLoggingPolicyS3BucketName :: Val Text
  , _elasticLoadBalancingLoadBalancerAccessLoggingPolicyS3BucketPrefix :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingLoadBalancerAccessLoggingPolicy where
  toJSON ElasticLoadBalancingLoadBalancerAccessLoggingPolicy{..} =
    object $
    catMaybes
    [ fmap (("EmitInterval",) . toJSON . fmap Integer') _elasticLoadBalancingLoadBalancerAccessLoggingPolicyEmitInterval
    , (Just . ("Enabled",) . toJSON . fmap Bool') _elasticLoadBalancingLoadBalancerAccessLoggingPolicyEnabled
    , (Just . ("S3BucketName",) . toJSON) _elasticLoadBalancingLoadBalancerAccessLoggingPolicyS3BucketName
    , fmap (("S3BucketPrefix",) . toJSON) _elasticLoadBalancingLoadBalancerAccessLoggingPolicyS3BucketPrefix
    ]

-- | Constructor for 'ElasticLoadBalancingLoadBalancerAccessLoggingPolicy'
-- containing required fields as arguments.
elasticLoadBalancingLoadBalancerAccessLoggingPolicy
  :: Val Bool -- ^ 'elblbalpEnabled'
  -> Val Text -- ^ 'elblbalpS3BucketName'
  -> ElasticLoadBalancingLoadBalancerAccessLoggingPolicy
elasticLoadBalancingLoadBalancerAccessLoggingPolicy enabledarg s3BucketNamearg =
  ElasticLoadBalancingLoadBalancerAccessLoggingPolicy
  { _elasticLoadBalancingLoadBalancerAccessLoggingPolicyEmitInterval = Nothing
  , _elasticLoadBalancingLoadBalancerAccessLoggingPolicyEnabled = enabledarg
  , _elasticLoadBalancingLoadBalancerAccessLoggingPolicyS3BucketName = s3BucketNamearg
  , _elasticLoadBalancingLoadBalancerAccessLoggingPolicyS3BucketPrefix = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-accessloggingpolicy.html#cfn-elb-accessloggingpolicy-emitinterval
elblbalpEmitInterval :: Lens' ElasticLoadBalancingLoadBalancerAccessLoggingPolicy (Maybe (Val Integer))
elblbalpEmitInterval = lens _elasticLoadBalancingLoadBalancerAccessLoggingPolicyEmitInterval (\s a -> s { _elasticLoadBalancingLoadBalancerAccessLoggingPolicyEmitInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-accessloggingpolicy.html#cfn-elb-accessloggingpolicy-enabled
elblbalpEnabled :: Lens' ElasticLoadBalancingLoadBalancerAccessLoggingPolicy (Val Bool)
elblbalpEnabled = lens _elasticLoadBalancingLoadBalancerAccessLoggingPolicyEnabled (\s a -> s { _elasticLoadBalancingLoadBalancerAccessLoggingPolicyEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-accessloggingpolicy.html#cfn-elb-accessloggingpolicy-s3bucketname
elblbalpS3BucketName :: Lens' ElasticLoadBalancingLoadBalancerAccessLoggingPolicy (Val Text)
elblbalpS3BucketName = lens _elasticLoadBalancingLoadBalancerAccessLoggingPolicyS3BucketName (\s a -> s { _elasticLoadBalancingLoadBalancerAccessLoggingPolicyS3BucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-accessloggingpolicy.html#cfn-elb-accessloggingpolicy-s3bucketprefix
elblbalpS3BucketPrefix :: Lens' ElasticLoadBalancingLoadBalancerAccessLoggingPolicy (Maybe (Val Text))
elblbalpS3BucketPrefix = lens _elasticLoadBalancingLoadBalancerAccessLoggingPolicyS3BucketPrefix (\s a -> s { _elasticLoadBalancingLoadBalancerAccessLoggingPolicyS3BucketPrefix = a })
