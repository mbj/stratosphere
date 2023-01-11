
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html

module Stratosphere.ResourceProperties.CloudFrontDistributionCacheBehavior where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudFrontDistributionForwardedValues
import Stratosphere.ResourceProperties.CloudFrontDistributionLambdaFunctionAssociation

-- | Full data type definition for CloudFrontDistributionCacheBehavior. See
-- 'cloudFrontDistributionCacheBehavior' for a more convenient constructor.
data CloudFrontDistributionCacheBehavior =
  CloudFrontDistributionCacheBehavior
  { _cloudFrontDistributionCacheBehaviorAllowedMethods :: Maybe (ValList Text)
  , _cloudFrontDistributionCacheBehaviorCachePolicyId :: Maybe (Val Text)
  , _cloudFrontDistributionCacheBehaviorCachedMethods :: Maybe (ValList Text)
  , _cloudFrontDistributionCacheBehaviorCompress :: Maybe (Val Bool)
  , _cloudFrontDistributionCacheBehaviorDefaultTTL :: Maybe (Val Double)
  , _cloudFrontDistributionCacheBehaviorFieldLevelEncryptionId :: Maybe (Val Text)
  , _cloudFrontDistributionCacheBehaviorForwardedValues :: Maybe CloudFrontDistributionForwardedValues
  , _cloudFrontDistributionCacheBehaviorLambdaFunctionAssociations :: Maybe [CloudFrontDistributionLambdaFunctionAssociation]
  , _cloudFrontDistributionCacheBehaviorMaxTTL :: Maybe (Val Double)
  , _cloudFrontDistributionCacheBehaviorMinTTL :: Maybe (Val Double)
  , _cloudFrontDistributionCacheBehaviorOriginRequestPolicyId :: Maybe (Val Text)
  , _cloudFrontDistributionCacheBehaviorPathPattern :: Val Text
  , _cloudFrontDistributionCacheBehaviorRealtimeLogConfigArn :: Maybe (Val Text)
  , _cloudFrontDistributionCacheBehaviorSmoothStreaming :: Maybe (Val Bool)
  , _cloudFrontDistributionCacheBehaviorTargetOriginId :: Val Text
  , _cloudFrontDistributionCacheBehaviorTrustedSigners :: Maybe (ValList Text)
  , _cloudFrontDistributionCacheBehaviorViewerProtocolPolicy :: Val Text
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionCacheBehavior where
  toJSON CloudFrontDistributionCacheBehavior{..} =
    object $
    catMaybes
    [ fmap (("AllowedMethods",) . toJSON) _cloudFrontDistributionCacheBehaviorAllowedMethods
    , fmap (("CachePolicyId",) . toJSON) _cloudFrontDistributionCacheBehaviorCachePolicyId
    , fmap (("CachedMethods",) . toJSON) _cloudFrontDistributionCacheBehaviorCachedMethods
    , fmap (("Compress",) . toJSON) _cloudFrontDistributionCacheBehaviorCompress
    , fmap (("DefaultTTL",) . toJSON) _cloudFrontDistributionCacheBehaviorDefaultTTL
    , fmap (("FieldLevelEncryptionId",) . toJSON) _cloudFrontDistributionCacheBehaviorFieldLevelEncryptionId
    , fmap (("ForwardedValues",) . toJSON) _cloudFrontDistributionCacheBehaviorForwardedValues
    , fmap (("LambdaFunctionAssociations",) . toJSON) _cloudFrontDistributionCacheBehaviorLambdaFunctionAssociations
    , fmap (("MaxTTL",) . toJSON) _cloudFrontDistributionCacheBehaviorMaxTTL
    , fmap (("MinTTL",) . toJSON) _cloudFrontDistributionCacheBehaviorMinTTL
    , fmap (("OriginRequestPolicyId",) . toJSON) _cloudFrontDistributionCacheBehaviorOriginRequestPolicyId
    , (Just . ("PathPattern",) . toJSON) _cloudFrontDistributionCacheBehaviorPathPattern
    , fmap (("RealtimeLogConfigArn",) . toJSON) _cloudFrontDistributionCacheBehaviorRealtimeLogConfigArn
    , fmap (("SmoothStreaming",) . toJSON) _cloudFrontDistributionCacheBehaviorSmoothStreaming
    , (Just . ("TargetOriginId",) . toJSON) _cloudFrontDistributionCacheBehaviorTargetOriginId
    , fmap (("TrustedSigners",) . toJSON) _cloudFrontDistributionCacheBehaviorTrustedSigners
    , (Just . ("ViewerProtocolPolicy",) . toJSON) _cloudFrontDistributionCacheBehaviorViewerProtocolPolicy
    ]

-- | Constructor for 'CloudFrontDistributionCacheBehavior' containing required
-- fields as arguments.
cloudFrontDistributionCacheBehavior
  :: Val Text -- ^ 'cfdcbPathPattern'
  -> Val Text -- ^ 'cfdcbTargetOriginId'
  -> Val Text -- ^ 'cfdcbViewerProtocolPolicy'
  -> CloudFrontDistributionCacheBehavior
cloudFrontDistributionCacheBehavior pathPatternarg targetOriginIdarg viewerProtocolPolicyarg =
  CloudFrontDistributionCacheBehavior
  { _cloudFrontDistributionCacheBehaviorAllowedMethods = Nothing
  , _cloudFrontDistributionCacheBehaviorCachePolicyId = Nothing
  , _cloudFrontDistributionCacheBehaviorCachedMethods = Nothing
  , _cloudFrontDistributionCacheBehaviorCompress = Nothing
  , _cloudFrontDistributionCacheBehaviorDefaultTTL = Nothing
  , _cloudFrontDistributionCacheBehaviorFieldLevelEncryptionId = Nothing
  , _cloudFrontDistributionCacheBehaviorForwardedValues = Nothing
  , _cloudFrontDistributionCacheBehaviorLambdaFunctionAssociations = Nothing
  , _cloudFrontDistributionCacheBehaviorMaxTTL = Nothing
  , _cloudFrontDistributionCacheBehaviorMinTTL = Nothing
  , _cloudFrontDistributionCacheBehaviorOriginRequestPolicyId = Nothing
  , _cloudFrontDistributionCacheBehaviorPathPattern = pathPatternarg
  , _cloudFrontDistributionCacheBehaviorRealtimeLogConfigArn = Nothing
  , _cloudFrontDistributionCacheBehaviorSmoothStreaming = Nothing
  , _cloudFrontDistributionCacheBehaviorTargetOriginId = targetOriginIdarg
  , _cloudFrontDistributionCacheBehaviorTrustedSigners = Nothing
  , _cloudFrontDistributionCacheBehaviorViewerProtocolPolicy = viewerProtocolPolicyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-allowedmethods
cfdcbAllowedMethods :: Lens' CloudFrontDistributionCacheBehavior (Maybe (ValList Text))
cfdcbAllowedMethods = lens _cloudFrontDistributionCacheBehaviorAllowedMethods (\s a -> s { _cloudFrontDistributionCacheBehaviorAllowedMethods = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-cachepolicyid
cfdcbCachePolicyId :: Lens' CloudFrontDistributionCacheBehavior (Maybe (Val Text))
cfdcbCachePolicyId = lens _cloudFrontDistributionCacheBehaviorCachePolicyId (\s a -> s { _cloudFrontDistributionCacheBehaviorCachePolicyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-cachedmethods
cfdcbCachedMethods :: Lens' CloudFrontDistributionCacheBehavior (Maybe (ValList Text))
cfdcbCachedMethods = lens _cloudFrontDistributionCacheBehaviorCachedMethods (\s a -> s { _cloudFrontDistributionCacheBehaviorCachedMethods = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-compress
cfdcbCompress :: Lens' CloudFrontDistributionCacheBehavior (Maybe (Val Bool))
cfdcbCompress = lens _cloudFrontDistributionCacheBehaviorCompress (\s a -> s { _cloudFrontDistributionCacheBehaviorCompress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-defaultttl
cfdcbDefaultTTL :: Lens' CloudFrontDistributionCacheBehavior (Maybe (Val Double))
cfdcbDefaultTTL = lens _cloudFrontDistributionCacheBehaviorDefaultTTL (\s a -> s { _cloudFrontDistributionCacheBehaviorDefaultTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-fieldlevelencryptionid
cfdcbFieldLevelEncryptionId :: Lens' CloudFrontDistributionCacheBehavior (Maybe (Val Text))
cfdcbFieldLevelEncryptionId = lens _cloudFrontDistributionCacheBehaviorFieldLevelEncryptionId (\s a -> s { _cloudFrontDistributionCacheBehaviorFieldLevelEncryptionId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-forwardedvalues
cfdcbForwardedValues :: Lens' CloudFrontDistributionCacheBehavior (Maybe CloudFrontDistributionForwardedValues)
cfdcbForwardedValues = lens _cloudFrontDistributionCacheBehaviorForwardedValues (\s a -> s { _cloudFrontDistributionCacheBehaviorForwardedValues = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-lambdafunctionassociations
cfdcbLambdaFunctionAssociations :: Lens' CloudFrontDistributionCacheBehavior (Maybe [CloudFrontDistributionLambdaFunctionAssociation])
cfdcbLambdaFunctionAssociations = lens _cloudFrontDistributionCacheBehaviorLambdaFunctionAssociations (\s a -> s { _cloudFrontDistributionCacheBehaviorLambdaFunctionAssociations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-maxttl
cfdcbMaxTTL :: Lens' CloudFrontDistributionCacheBehavior (Maybe (Val Double))
cfdcbMaxTTL = lens _cloudFrontDistributionCacheBehaviorMaxTTL (\s a -> s { _cloudFrontDistributionCacheBehaviorMaxTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-minttl
cfdcbMinTTL :: Lens' CloudFrontDistributionCacheBehavior (Maybe (Val Double))
cfdcbMinTTL = lens _cloudFrontDistributionCacheBehaviorMinTTL (\s a -> s { _cloudFrontDistributionCacheBehaviorMinTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-originrequestpolicyid
cfdcbOriginRequestPolicyId :: Lens' CloudFrontDistributionCacheBehavior (Maybe (Val Text))
cfdcbOriginRequestPolicyId = lens _cloudFrontDistributionCacheBehaviorOriginRequestPolicyId (\s a -> s { _cloudFrontDistributionCacheBehaviorOriginRequestPolicyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-pathpattern
cfdcbPathPattern :: Lens' CloudFrontDistributionCacheBehavior (Val Text)
cfdcbPathPattern = lens _cloudFrontDistributionCacheBehaviorPathPattern (\s a -> s { _cloudFrontDistributionCacheBehaviorPathPattern = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-realtimelogconfigarn
cfdcbRealtimeLogConfigArn :: Lens' CloudFrontDistributionCacheBehavior (Maybe (Val Text))
cfdcbRealtimeLogConfigArn = lens _cloudFrontDistributionCacheBehaviorRealtimeLogConfigArn (\s a -> s { _cloudFrontDistributionCacheBehaviorRealtimeLogConfigArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-smoothstreaming
cfdcbSmoothStreaming :: Lens' CloudFrontDistributionCacheBehavior (Maybe (Val Bool))
cfdcbSmoothStreaming = lens _cloudFrontDistributionCacheBehaviorSmoothStreaming (\s a -> s { _cloudFrontDistributionCacheBehaviorSmoothStreaming = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-targetoriginid
cfdcbTargetOriginId :: Lens' CloudFrontDistributionCacheBehavior (Val Text)
cfdcbTargetOriginId = lens _cloudFrontDistributionCacheBehaviorTargetOriginId (\s a -> s { _cloudFrontDistributionCacheBehaviorTargetOriginId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-trustedsigners
cfdcbTrustedSigners :: Lens' CloudFrontDistributionCacheBehavior (Maybe (ValList Text))
cfdcbTrustedSigners = lens _cloudFrontDistributionCacheBehaviorTrustedSigners (\s a -> s { _cloudFrontDistributionCacheBehaviorTrustedSigners = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-cachebehavior.html#cfn-cloudfront-distribution-cachebehavior-viewerprotocolpolicy
cfdcbViewerProtocolPolicy :: Lens' CloudFrontDistributionCacheBehavior (Val Text)
cfdcbViewerProtocolPolicy = lens _cloudFrontDistributionCacheBehaviorViewerProtocolPolicy (\s a -> s { _cloudFrontDistributionCacheBehaviorViewerProtocolPolicy = a })
