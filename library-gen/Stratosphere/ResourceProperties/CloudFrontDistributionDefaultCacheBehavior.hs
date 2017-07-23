{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html

module Stratosphere.ResourceProperties.CloudFrontDistributionDefaultCacheBehavior where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.CloudFrontDistributionForwardedValues

-- | Full data type definition for CloudFrontDistributionDefaultCacheBehavior.
-- See 'cloudFrontDistributionDefaultCacheBehavior' for a more convenient
-- constructor.
data CloudFrontDistributionDefaultCacheBehavior =
  CloudFrontDistributionDefaultCacheBehavior
  { _cloudFrontDistributionDefaultCacheBehaviorAllowedMethods :: Maybe (ValList Text)
  , _cloudFrontDistributionDefaultCacheBehaviorCachedMethods :: Maybe (ValList Text)
  , _cloudFrontDistributionDefaultCacheBehaviorCompress :: Maybe (Val Bool')
  , _cloudFrontDistributionDefaultCacheBehaviorDefaultTTL :: Maybe (Val Integer')
  , _cloudFrontDistributionDefaultCacheBehaviorForwardedValues :: CloudFrontDistributionForwardedValues
  , _cloudFrontDistributionDefaultCacheBehaviorMaxTTL :: Maybe (Val Integer')
  , _cloudFrontDistributionDefaultCacheBehaviorMinTTL :: Maybe (Val Integer')
  , _cloudFrontDistributionDefaultCacheBehaviorSmoothStreaming :: Maybe (Val Bool')
  , _cloudFrontDistributionDefaultCacheBehaviorTargetOriginId :: Val Text
  , _cloudFrontDistributionDefaultCacheBehaviorTrustedSigners :: Maybe (ValList Text)
  , _cloudFrontDistributionDefaultCacheBehaviorViewerProtocolPolicy :: Val Text
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionDefaultCacheBehavior where
  toJSON CloudFrontDistributionDefaultCacheBehavior{..} =
    object $
    catMaybes
    [ ("AllowedMethods" .=) <$> _cloudFrontDistributionDefaultCacheBehaviorAllowedMethods
    , ("CachedMethods" .=) <$> _cloudFrontDistributionDefaultCacheBehaviorCachedMethods
    , ("Compress" .=) <$> _cloudFrontDistributionDefaultCacheBehaviorCompress
    , ("DefaultTTL" .=) <$> _cloudFrontDistributionDefaultCacheBehaviorDefaultTTL
    , Just ("ForwardedValues" .= _cloudFrontDistributionDefaultCacheBehaviorForwardedValues)
    , ("MaxTTL" .=) <$> _cloudFrontDistributionDefaultCacheBehaviorMaxTTL
    , ("MinTTL" .=) <$> _cloudFrontDistributionDefaultCacheBehaviorMinTTL
    , ("SmoothStreaming" .=) <$> _cloudFrontDistributionDefaultCacheBehaviorSmoothStreaming
    , Just ("TargetOriginId" .= _cloudFrontDistributionDefaultCacheBehaviorTargetOriginId)
    , ("TrustedSigners" .=) <$> _cloudFrontDistributionDefaultCacheBehaviorTrustedSigners
    , Just ("ViewerProtocolPolicy" .= _cloudFrontDistributionDefaultCacheBehaviorViewerProtocolPolicy)
    ]

instance FromJSON CloudFrontDistributionDefaultCacheBehavior where
  parseJSON (Object obj) =
    CloudFrontDistributionDefaultCacheBehavior <$>
      obj .:? "AllowedMethods" <*>
      obj .:? "CachedMethods" <*>
      obj .:? "Compress" <*>
      obj .:? "DefaultTTL" <*>
      obj .: "ForwardedValues" <*>
      obj .:? "MaxTTL" <*>
      obj .:? "MinTTL" <*>
      obj .:? "SmoothStreaming" <*>
      obj .: "TargetOriginId" <*>
      obj .:? "TrustedSigners" <*>
      obj .: "ViewerProtocolPolicy"
  parseJSON _ = mempty

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
  , _cloudFrontDistributionDefaultCacheBehaviorForwardedValues = forwardedValuesarg
  , _cloudFrontDistributionDefaultCacheBehaviorMaxTTL = Nothing
  , _cloudFrontDistributionDefaultCacheBehaviorMinTTL = Nothing
  , _cloudFrontDistributionDefaultCacheBehaviorSmoothStreaming = Nothing
  , _cloudFrontDistributionDefaultCacheBehaviorTargetOriginId = targetOriginIdarg
  , _cloudFrontDistributionDefaultCacheBehaviorTrustedSigners = Nothing
  , _cloudFrontDistributionDefaultCacheBehaviorViewerProtocolPolicy = viewerProtocolPolicyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-allowedmethods
cfddcbAllowedMethods :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe (ValList Text))
cfddcbAllowedMethods = lens _cloudFrontDistributionDefaultCacheBehaviorAllowedMethods (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorAllowedMethods = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-cachedmethods
cfddcbCachedMethods :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe (ValList Text))
cfddcbCachedMethods = lens _cloudFrontDistributionDefaultCacheBehaviorCachedMethods (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorCachedMethods = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-compress
cfddcbCompress :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe (Val Bool'))
cfddcbCompress = lens _cloudFrontDistributionDefaultCacheBehaviorCompress (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorCompress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-defaultttl
cfddcbDefaultTTL :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe (Val Integer'))
cfddcbDefaultTTL = lens _cloudFrontDistributionDefaultCacheBehaviorDefaultTTL (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorDefaultTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-forwardedvalues
cfddcbForwardedValues :: Lens' CloudFrontDistributionDefaultCacheBehavior CloudFrontDistributionForwardedValues
cfddcbForwardedValues = lens _cloudFrontDistributionDefaultCacheBehaviorForwardedValues (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorForwardedValues = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-maxttl
cfddcbMaxTTL :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe (Val Integer'))
cfddcbMaxTTL = lens _cloudFrontDistributionDefaultCacheBehaviorMaxTTL (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorMaxTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-minttl
cfddcbMinTTL :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe (Val Integer'))
cfddcbMinTTL = lens _cloudFrontDistributionDefaultCacheBehaviorMinTTL (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorMinTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-smoothstreaming
cfddcbSmoothStreaming :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe (Val Bool'))
cfddcbSmoothStreaming = lens _cloudFrontDistributionDefaultCacheBehaviorSmoothStreaming (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorSmoothStreaming = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-targetoriginid
cfddcbTargetOriginId :: Lens' CloudFrontDistributionDefaultCacheBehavior (Val Text)
cfddcbTargetOriginId = lens _cloudFrontDistributionDefaultCacheBehaviorTargetOriginId (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorTargetOriginId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-trustedsigners
cfddcbTrustedSigners :: Lens' CloudFrontDistributionDefaultCacheBehavior (Maybe (ValList Text))
cfddcbTrustedSigners = lens _cloudFrontDistributionDefaultCacheBehaviorTrustedSigners (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorTrustedSigners = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-defaultcachebehavior.html#cfn-cloudfront-defaultcachebehavior-viewerprotocolpolicy
cfddcbViewerProtocolPolicy :: Lens' CloudFrontDistributionDefaultCacheBehavior (Val Text)
cfddcbViewerProtocolPolicy = lens _cloudFrontDistributionDefaultCacheBehaviorViewerProtocolPolicy (\s a -> s { _cloudFrontDistributionDefaultCacheBehaviorViewerProtocolPolicy = a })
