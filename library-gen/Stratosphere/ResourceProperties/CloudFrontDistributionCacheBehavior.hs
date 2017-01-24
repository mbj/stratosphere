{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html

module Stratosphere.ResourceProperties.CloudFrontDistributionCacheBehavior where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.CloudFrontDistributionForwardedValues

-- | Full data type definition for CloudFrontDistributionCacheBehavior. See
-- | 'cloudFrontDistributionCacheBehavior' for a more convenient constructor.
data CloudFrontDistributionCacheBehavior =
  CloudFrontDistributionCacheBehavior
  { _cloudFrontDistributionCacheBehaviorAllowedMethods :: Maybe [Val Text]
  , _cloudFrontDistributionCacheBehaviorCachedMethods :: Maybe [Val Text]
  , _cloudFrontDistributionCacheBehaviorCompress :: Maybe (Val Bool')
  , _cloudFrontDistributionCacheBehaviorDefaultTTL :: Maybe (Val Integer')
  , _cloudFrontDistributionCacheBehaviorForwardedValues :: CloudFrontDistributionForwardedValues
  , _cloudFrontDistributionCacheBehaviorMaxTTL :: Maybe (Val Integer')
  , _cloudFrontDistributionCacheBehaviorMinTTL :: Maybe (Val Integer')
  , _cloudFrontDistributionCacheBehaviorPathPattern :: Val Text
  , _cloudFrontDistributionCacheBehaviorSmoothStreaming :: Maybe (Val Bool')
  , _cloudFrontDistributionCacheBehaviorTargetOriginId :: Val Text
  , _cloudFrontDistributionCacheBehaviorTrustedSigners :: Maybe [Val Text]
  , _cloudFrontDistributionCacheBehaviorViewerProtocolPolicy :: Val Text
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionCacheBehavior where
  toJSON CloudFrontDistributionCacheBehavior{..} =
    object
    [ "AllowedMethods" .= _cloudFrontDistributionCacheBehaviorAllowedMethods
    , "CachedMethods" .= _cloudFrontDistributionCacheBehaviorCachedMethods
    , "Compress" .= _cloudFrontDistributionCacheBehaviorCompress
    , "DefaultTTL" .= _cloudFrontDistributionCacheBehaviorDefaultTTL
    , "ForwardedValues" .= _cloudFrontDistributionCacheBehaviorForwardedValues
    , "MaxTTL" .= _cloudFrontDistributionCacheBehaviorMaxTTL
    , "MinTTL" .= _cloudFrontDistributionCacheBehaviorMinTTL
    , "PathPattern" .= _cloudFrontDistributionCacheBehaviorPathPattern
    , "SmoothStreaming" .= _cloudFrontDistributionCacheBehaviorSmoothStreaming
    , "TargetOriginId" .= _cloudFrontDistributionCacheBehaviorTargetOriginId
    , "TrustedSigners" .= _cloudFrontDistributionCacheBehaviorTrustedSigners
    , "ViewerProtocolPolicy" .= _cloudFrontDistributionCacheBehaviorViewerProtocolPolicy
    ]

instance FromJSON CloudFrontDistributionCacheBehavior where
  parseJSON (Object obj) =
    CloudFrontDistributionCacheBehavior <$>
      obj .: "AllowedMethods" <*>
      obj .: "CachedMethods" <*>
      obj .: "Compress" <*>
      obj .: "DefaultTTL" <*>
      obj .: "ForwardedValues" <*>
      obj .: "MaxTTL" <*>
      obj .: "MinTTL" <*>
      obj .: "PathPattern" <*>
      obj .: "SmoothStreaming" <*>
      obj .: "TargetOriginId" <*>
      obj .: "TrustedSigners" <*>
      obj .: "ViewerProtocolPolicy"
  parseJSON _ = mempty

-- | Constructor for 'CloudFrontDistributionCacheBehavior' containing required
-- | fields as arguments.
cloudFrontDistributionCacheBehavior
  :: CloudFrontDistributionForwardedValues -- ^ 'cfdcbForwardedValues'
  -> Val Text -- ^ 'cfdcbPathPattern'
  -> Val Text -- ^ 'cfdcbTargetOriginId'
  -> Val Text -- ^ 'cfdcbViewerProtocolPolicy'
  -> CloudFrontDistributionCacheBehavior
cloudFrontDistributionCacheBehavior forwardedValuesarg pathPatternarg targetOriginIdarg viewerProtocolPolicyarg =
  CloudFrontDistributionCacheBehavior
  { _cloudFrontDistributionCacheBehaviorAllowedMethods = Nothing
  , _cloudFrontDistributionCacheBehaviorCachedMethods = Nothing
  , _cloudFrontDistributionCacheBehaviorCompress = Nothing
  , _cloudFrontDistributionCacheBehaviorDefaultTTL = Nothing
  , _cloudFrontDistributionCacheBehaviorForwardedValues = forwardedValuesarg
  , _cloudFrontDistributionCacheBehaviorMaxTTL = Nothing
  , _cloudFrontDistributionCacheBehaviorMinTTL = Nothing
  , _cloudFrontDistributionCacheBehaviorPathPattern = pathPatternarg
  , _cloudFrontDistributionCacheBehaviorSmoothStreaming = Nothing
  , _cloudFrontDistributionCacheBehaviorTargetOriginId = targetOriginIdarg
  , _cloudFrontDistributionCacheBehaviorTrustedSigners = Nothing
  , _cloudFrontDistributionCacheBehaviorViewerProtocolPolicy = viewerProtocolPolicyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-allowedmethods
cfdcbAllowedMethods :: Lens' CloudFrontDistributionCacheBehavior (Maybe [Val Text])
cfdcbAllowedMethods = lens _cloudFrontDistributionCacheBehaviorAllowedMethods (\s a -> s { _cloudFrontDistributionCacheBehaviorAllowedMethods = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-cachedmethods
cfdcbCachedMethods :: Lens' CloudFrontDistributionCacheBehavior (Maybe [Val Text])
cfdcbCachedMethods = lens _cloudFrontDistributionCacheBehaviorCachedMethods (\s a -> s { _cloudFrontDistributionCacheBehaviorCachedMethods = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-compress
cfdcbCompress :: Lens' CloudFrontDistributionCacheBehavior (Maybe (Val Bool'))
cfdcbCompress = lens _cloudFrontDistributionCacheBehaviorCompress (\s a -> s { _cloudFrontDistributionCacheBehaviorCompress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-defaultttl
cfdcbDefaultTTL :: Lens' CloudFrontDistributionCacheBehavior (Maybe (Val Integer'))
cfdcbDefaultTTL = lens _cloudFrontDistributionCacheBehaviorDefaultTTL (\s a -> s { _cloudFrontDistributionCacheBehaviorDefaultTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-forwardedvalues
cfdcbForwardedValues :: Lens' CloudFrontDistributionCacheBehavior CloudFrontDistributionForwardedValues
cfdcbForwardedValues = lens _cloudFrontDistributionCacheBehaviorForwardedValues (\s a -> s { _cloudFrontDistributionCacheBehaviorForwardedValues = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-maxttl
cfdcbMaxTTL :: Lens' CloudFrontDistributionCacheBehavior (Maybe (Val Integer'))
cfdcbMaxTTL = lens _cloudFrontDistributionCacheBehaviorMaxTTL (\s a -> s { _cloudFrontDistributionCacheBehaviorMaxTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-minttl
cfdcbMinTTL :: Lens' CloudFrontDistributionCacheBehavior (Maybe (Val Integer'))
cfdcbMinTTL = lens _cloudFrontDistributionCacheBehaviorMinTTL (\s a -> s { _cloudFrontDistributionCacheBehaviorMinTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-pathpattern
cfdcbPathPattern :: Lens' CloudFrontDistributionCacheBehavior (Val Text)
cfdcbPathPattern = lens _cloudFrontDistributionCacheBehaviorPathPattern (\s a -> s { _cloudFrontDistributionCacheBehaviorPathPattern = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-smoothstreaming
cfdcbSmoothStreaming :: Lens' CloudFrontDistributionCacheBehavior (Maybe (Val Bool'))
cfdcbSmoothStreaming = lens _cloudFrontDistributionCacheBehaviorSmoothStreaming (\s a -> s { _cloudFrontDistributionCacheBehaviorSmoothStreaming = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-targetoriginid
cfdcbTargetOriginId :: Lens' CloudFrontDistributionCacheBehavior (Val Text)
cfdcbTargetOriginId = lens _cloudFrontDistributionCacheBehaviorTargetOriginId (\s a -> s { _cloudFrontDistributionCacheBehaviorTargetOriginId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-trustedsigners
cfdcbTrustedSigners :: Lens' CloudFrontDistributionCacheBehavior (Maybe [Val Text])
cfdcbTrustedSigners = lens _cloudFrontDistributionCacheBehaviorTrustedSigners (\s a -> s { _cloudFrontDistributionCacheBehaviorTrustedSigners = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachebehavior.html#cfn-cloudfront-cachebehavior-viewerprotocolpolicy
cfdcbViewerProtocolPolicy :: Lens' CloudFrontDistributionCacheBehavior (Val Text)
cfdcbViewerProtocolPolicy = lens _cloudFrontDistributionCacheBehaviorViewerProtocolPolicy (\s a -> s { _cloudFrontDistributionCacheBehaviorViewerProtocolPolicy = a })
