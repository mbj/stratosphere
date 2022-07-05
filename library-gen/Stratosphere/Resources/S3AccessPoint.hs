{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-accesspoint.html

module Stratosphere.Resources.S3AccessPoint where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.S3AccessPointPublicAccessBlockConfiguration
import Stratosphere.ResourceProperties.S3AccessPointVpcConfiguration

-- | Full data type definition for S3AccessPoint. See 's3AccessPoint' for a
-- more convenient constructor.
data S3AccessPoint =
  S3AccessPoint
  { _s3AccessPointBucket :: Val Text
  , _s3AccessPointCreationDate :: Maybe (Val Text)
  , _s3AccessPointName :: Maybe (Val Text)
  , _s3AccessPointNetworkOrigin :: Maybe (Val Text)
  , _s3AccessPointPolicy :: Maybe Object
  , _s3AccessPointPolicyStatus :: Maybe Object
  , _s3AccessPointPublicAccessBlockConfiguration :: Maybe S3AccessPointPublicAccessBlockConfiguration
  , _s3AccessPointVpcConfiguration :: Maybe S3AccessPointVpcConfiguration
  } deriving (Show, Eq)

instance ToResourceProperties S3AccessPoint where
  toResourceProperties S3AccessPoint{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::S3::AccessPoint"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Bucket",) . toJSON) _s3AccessPointBucket
        , fmap (("CreationDate",) . toJSON) _s3AccessPointCreationDate
        , fmap (("Name",) . toJSON) _s3AccessPointName
        , fmap (("NetworkOrigin",) . toJSON) _s3AccessPointNetworkOrigin
        , fmap (("Policy",) . toJSON) _s3AccessPointPolicy
        , fmap (("PolicyStatus",) . toJSON) _s3AccessPointPolicyStatus
        , fmap (("PublicAccessBlockConfiguration",) . toJSON) _s3AccessPointPublicAccessBlockConfiguration
        , fmap (("VpcConfiguration",) . toJSON) _s3AccessPointVpcConfiguration
        ]
    }

-- | Constructor for 'S3AccessPoint' containing required fields as arguments.
s3AccessPoint
  :: Val Text -- ^ 'sapBucket'
  -> S3AccessPoint
s3AccessPoint bucketarg =
  S3AccessPoint
  { _s3AccessPointBucket = bucketarg
  , _s3AccessPointCreationDate = Nothing
  , _s3AccessPointName = Nothing
  , _s3AccessPointNetworkOrigin = Nothing
  , _s3AccessPointPolicy = Nothing
  , _s3AccessPointPolicyStatus = Nothing
  , _s3AccessPointPublicAccessBlockConfiguration = Nothing
  , _s3AccessPointVpcConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-accesspoint.html#cfn-s3-accesspoint-bucket
sapBucket :: Lens' S3AccessPoint (Val Text)
sapBucket = lens _s3AccessPointBucket (\s a -> s { _s3AccessPointBucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-accesspoint.html#cfn-s3-accesspoint-creationdate
sapCreationDate :: Lens' S3AccessPoint (Maybe (Val Text))
sapCreationDate = lens _s3AccessPointCreationDate (\s a -> s { _s3AccessPointCreationDate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-accesspoint.html#cfn-s3-accesspoint-name
sapName :: Lens' S3AccessPoint (Maybe (Val Text))
sapName = lens _s3AccessPointName (\s a -> s { _s3AccessPointName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-accesspoint.html#cfn-s3-accesspoint-networkorigin
sapNetworkOrigin :: Lens' S3AccessPoint (Maybe (Val Text))
sapNetworkOrigin = lens _s3AccessPointNetworkOrigin (\s a -> s { _s3AccessPointNetworkOrigin = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-accesspoint.html#cfn-s3-accesspoint-policy
sapPolicy :: Lens' S3AccessPoint (Maybe Object)
sapPolicy = lens _s3AccessPointPolicy (\s a -> s { _s3AccessPointPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-accesspoint.html#cfn-s3-accesspoint-policystatus
sapPolicyStatus :: Lens' S3AccessPoint (Maybe Object)
sapPolicyStatus = lens _s3AccessPointPolicyStatus (\s a -> s { _s3AccessPointPolicyStatus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-accesspoint.html#cfn-s3-accesspoint-publicaccessblockconfiguration
sapPublicAccessBlockConfiguration :: Lens' S3AccessPoint (Maybe S3AccessPointPublicAccessBlockConfiguration)
sapPublicAccessBlockConfiguration = lens _s3AccessPointPublicAccessBlockConfiguration (\s a -> s { _s3AccessPointPublicAccessBlockConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-accesspoint.html#cfn-s3-accesspoint-vpcconfiguration
sapVpcConfiguration :: Lens' S3AccessPoint (Maybe S3AccessPointVpcConfiguration)
sapVpcConfiguration = lens _s3AccessPointVpcConfiguration (\s a -> s { _s3AccessPointVpcConfiguration = a })
