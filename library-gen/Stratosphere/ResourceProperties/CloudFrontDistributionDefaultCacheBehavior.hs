{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html

module Stratosphere.ResourceProperties.CloudFrontDistributionDefaultCacheBehavior where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudFrontDistributionForwardedValues
import Stratosphere.ResourceProperties.CloudFrontDistributionLambdaFunctionAssociation

-- | Full data type definition for CloudFrontDistributionDefaultCacheBehavior.
-- See 'cloudFrontDistributionDefaultCacheBehavior' for a more convenient
-- constructor.
data CloudFrontDistributionDefaultCacheBehavior =
  CloudFrontDistributionDefaultCacheBehavior
  { _cloudFrontDistributionDefaultCacheBehaviorAllowedMethods :: Maybe (ValList Text)
  , _cloudFrontDistributionDefaultCacheBehaviorCachedMethods :: Maybe (ValList Text)
  , _cloudFrontDistributionDefaultCacheBehaviorCompress :: Maybe (Val Bool)
  , _cloudFrontDistributionDefaultCacheBehaviorDefaultTTL :: Maybe (Val Double)
  , _cloudFrontDistributionDefaultCacheBehaviorFieldLevelEncryptionId :: Maybe (Val Text)
  , _cloudFrontDistributionDefaultCacheBehaviorForwardedValues :: CloudFrontDistributionForwardedValues
  , _cloudFrontDistributionDefaultCacheBehaviorLambdaFunctionAssociations :: Maybe [CloudFrontDistributionLambdaFunctionAssociation]
  , _cloudFrontDistributionDefaultCacheBehaviorMaxTTL :: Maybe (Val Double)
  , _cloudFrontDistributionDefaultCacheBehaviorMinTTL :: Maybe (Val Double)
  , _cloudFrontDistributionDefaultCacheBehaviorSmoothStreaming :: Maybe (Val Bool)
  , _cloudFrontDistributionDefaultCacheBehaviorTargetOriginId :: Val Text
  , _cloudFrontDistributionDefaultCacheBehaviorTrustedSigners :: Maybe (ValList Text)
  , _cloudFrontDistributionDefaultCacheBehaviorViewerProtocolPolicy :: Val Text
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionDefaultCacheBehavior where
  toJSON CloudFrontDistributionDefaultCacheBehavior{..} =
    object $
    catMaybes
    [ fmap (("AllowedMethods",) . toJSON) _cloudFrontDistributionDefaultCacheBehaviorAllowedMethods
    , fmap (("CachedMethods",) . toJSON) _cloudFrontDistributionDefaultCacheBehaviorCachedMethods
    , fmap (("Compress",) . toJSON) _cloudFrontDistributionDefaultCacheBehaviorCompress
    , fmap (("DefaultTTL",) . toJSON) _cloudFrontDistributionDefaultCacheBehaviorDefaultTTL
    , fmap (("FieldLevelEncryptionId",) . toJSON) _cloudFrontDistributionDefaultCacheBehaviorFieldLevelEncryptionId
    , (Just . ("ForwardedValues",) . toJSON) _cloudFrontDistributionDefaultCacheBehaviorForwardedValues
    , fmap (("LambdaFunctionAssociations",) . toJSON) _cloudFrontDistributionDefaultCacheBehaviorLambdaFunctionAssociations
    , fmap (("MaxTTL",) . toJSON) _cloudFrontDistributionDefaultCacheBehaviorMaxTTL
    , fmap (("MinTTL",) . toJSON) _cloudFrontDistributionDefaultCacheBehaviorMinTTL
    , fmap (("SmoothStreaming",) . toJSON) _cloudFrontDistributionDefaultCacheBehaviorSmoothStreaming
    , (Just . ("TargetOriginId",) . toJSON) _cloudFrontDistributionDefaultCacheBehaviorTargetOriginId
    , fmap (("TrustedSigners",) . toJSON) _cloudFrontDistributionDefaultCacheBehaviorTrustedSigners
    , (Just . ("ViewerProtocolPolicy",) . toJSON) _cloudFrontDistributionDefaultCacheBehaviorViewerProtocolPolicy
    ]

-- | Constructor for 'CloudFrontDistributionDefaultCacheBehavior' containing
-- required fields as arguments.
cloudFrontDistributionDefaultCacheBehavior
  :: CloudFrontDistributionForwardedValues -- ^ 'cfddcbForwardedValues'
  -> Val Text -- ^ 'cfddcbTargetOriginId'
  -> Val Text -- ^ 'cfddcbViewerProtocolPolicy'
  -> CloudFrontDistributionDefaultCacheBehavior
cloudFrontDistributionDefaultCacheBehavior forwardedValuesarg targetOriginIdarg viewerProtocolPolicyarg =
  CloudFrontDistributionDefaultCacheBehavior
  { _cloudFrontDistributionDefaultCacheBehaviorAllowedMethods = Nothing
  , _cloudFrontDistributionDefaultCacheBehaviorCachedMethods = Nothing
  , _cloudFrontDistributionDefaultCacheBehaviorCompress = Nothing
  , _cloudFrontDistributionDefaultCacheBehaviorDefaultTTL = Nothing
  , _cloudFrontDistributionDefaultCacheBehaviorFieldLevelEncryptionId = Nothing
  , _cloudFrontDistributionDefaultCacheBehaviorForwardedValues = forwardedValuesarg
  , _cloudFrontDistributionDefaultCacheBehaviorLambdaFunctionAssociations = Nothing
  , _cloudFrontDistributionDefaultCacheBehaviorMaxTTL = Nothing
  , _cloudFrontDistributionDefaultCacheBehaviorMinTTL = Nothing
  , _cloudFrontDistributionDefaultCacheBehaviorSmoothStreaming = Nothing
  , _cloudFrontDistributionDefaultCacheBehaviorTargetOriginId = targetOriginIdarg
  , _cloudFrontDistributionDefaultCacheBehaviorTrustedSigners = Nothing
  , _cloudFrontDistributionDefaultCacheBehaviorViewerProtocolPolicy = viewerProtocolPolicyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-allowedmethods
cfddcbAllowedMethods :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe (ValList Text))
cfddcbAllowedMethods = lens _cloudFrontDistributionDefaultCacheBehaviorAllowedMethods (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorAllowedMethods = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-cachedmethods
cfddcbCachedMethods :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe (ValList Text))
cfddcbCachedMethods = lens _cloudFrontDistributionDefaultCacheBehaviorCachedMethods (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorCachedMethods = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-compress
cfddcbCompress :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe (Val Bool))
cfddcbCompress = lens _cloudFrontDistributionDefaultCacheBehaviorCompress (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorCompress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-defaultttl
cfddcbDefaultTTL :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe (Val Double))
cfddcbDefaultTTL = lens _cloudFrontDistributionDefaultCacheBehaviorDefaultTTL (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorDefaultTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-fieldlevelencryptionid
cfddcbFieldLevelEncryptionId :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe (Val Text))
cfddcbFieldLevelEncryptionId = lens _cloudFrontDistributionDefaultCacheBehaviorFieldLevelEncryptionId (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorFieldLevelEncryptionId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-forwardedvalues
cfddcbForwardedValues :: Lens' CloudFrontDistributionDefaultCacheBehavior CloudFrontDistributionForwardedValues
cfddcbForwardedValues = lens _cloudFrontDistributionDefaultCacheBehaviorForwardedValues (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorForwardedValues = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-lambdafunctionassociations
cfddcbLambdaFunctionAssociations :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe [CloudFrontDistributionLambdaFunctionAssociation])
cfddcbLambdaFunctionAssociations = lens _cloudFrontDistributionDefaultCacheBehaviorLambdaFunctionAssociations (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorLambdaFunctionAssociations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-maxttl
cfddcbMaxTTL :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe (Val Double))
cfddcbMaxTTL = lens _cloudFrontDistributionDefaultCacheBehaviorMaxTTL (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorMaxTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-minttl
cfddcbMinTTL :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe (Val Double))
cfddcbMinTTL = lens _cloudFrontDistributionDefaultCacheBehaviorMinTTL (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorMinTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-smoothstreaming
cfddcbSmoothStreaming :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe (Val Bool))
cfddcbSmoothStreaming = lens _cloudFrontDistributionDefaultCacheBehaviorSmoothStreaming (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorSmoothStreaming = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-targetoriginid
cfddcbTargetOriginId :: Lens' CloudFrontDistributionDefaultCacheBehavior (Val Text)
cfddcbTargetOriginId = lens _cloudFrontDistributionDefaultCacheBehaviorTargetOriginId (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorTargetOriginId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-trustedsigners
cfddcbTrustedSigners :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe (ValList Text))
cfddcbTrustedSigners = lens _cloudFrontDistributionDefaultCacheBehaviorTrustedSigners (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorTrustedSigners = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-defaultcachebehavior.html#cfn-cloudfront-distribution-defaultcachebehavior-viewerprotocolpolicy
cfddcbViewerProtocolPolicy :: Lens' CloudFrontDistributionDefaultCacheBehavior (Val Text)
cfddcbViewerProtocolPolicy = lens _cloudFrontDistributionDefaultCacheBehaviorViewerProtocolPolicy (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorViewerProtocolPolicy = a })
