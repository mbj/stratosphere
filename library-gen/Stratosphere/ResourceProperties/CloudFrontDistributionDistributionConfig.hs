{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html

module Stratosphere.ResourceProperties.CloudFrontDistributionDistributionConfig where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.CloudFrontDistributionCacheBehavior
import Stratosphere.ResourceProperties.CloudFrontDistributionCustomErrorResponse
import Stratosphere.ResourceProperties.CloudFrontDistributionDefaultCacheBehavior
import Stratosphere.ResourceProperties.CloudFrontDistributionLogging
import Stratosphere.ResourceProperties.CloudFrontDistributionOrigin
import Stratosphere.ResourceProperties.CloudFrontDistributionRestrictions
import Stratosphere.ResourceProperties.CloudFrontDistributionViewerCertificate

-- | Full data type definition for CloudFrontDistributionDistributionConfig.
-- | See 'cloudFrontDistributionDistributionConfig' for a more convenient
-- | constructor.
data CloudFrontDistributionDistributionConfig =
  CloudFrontDistributionDistributionConfig
  { _cloudFrontDistributionDistributionConfigAliases :: Maybe [Val Text]
  , _cloudFrontDistributionDistributionConfigCacheBehaviors :: Maybe [CloudFrontDistributionCacheBehavior]
  , _cloudFrontDistributionDistributionConfigComment :: Maybe (Val Text)
  , _cloudFrontDistributionDistributionConfigCustomErrorResponses :: Maybe [CloudFrontDistributionCustomErrorResponse]
  , _cloudFrontDistributionDistributionConfigDefaultCacheBehavior :: CloudFrontDistributionDefaultCacheBehavior
  , _cloudFrontDistributionDistributionConfigDefaultRootObject :: Maybe (Val Text)
  , _cloudFrontDistributionDistributionConfigEnabled :: Val Bool'
  , _cloudFrontDistributionDistributionConfigHttpVersion :: Maybe (Val Text)
  , _cloudFrontDistributionDistributionConfigLogging :: Maybe CloudFrontDistributionLogging
  , _cloudFrontDistributionDistributionConfigOrigins :: [CloudFrontDistributionOrigin]
  , _cloudFrontDistributionDistributionConfigPriceClass :: Maybe (Val Text)
  , _cloudFrontDistributionDistributionConfigRestrictions :: Maybe CloudFrontDistributionRestrictions
  , _cloudFrontDistributionDistributionConfigViewerCertificate :: Maybe CloudFrontDistributionViewerCertificate
  , _cloudFrontDistributionDistributionConfigWebACLId :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON CloudFrontDistributionDistributionConfig where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 41, omitNothingFields = True }

instance FromJSON CloudFrontDistributionDistributionConfig where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 41, omitNothingFields = True }

-- | Constructor for 'CloudFrontDistributionDistributionConfig' containing
-- | required fields as arguments.
cloudFrontDistributionDistributionConfig
  :: CloudFrontDistributionDefaultCacheBehavior -- ^ 'cfddcDefaultCacheBehavior'
  -> Val Bool' -- ^ 'cfddcEnabled'
  -> [CloudFrontDistributionOrigin] -- ^ 'cfddcOrigins'
  -> CloudFrontDistributionDistributionConfig
cloudFrontDistributionDistributionConfig defaultCacheBehaviorarg enabledarg originsarg =
  CloudFrontDistributionDistributionConfig
  { _cloudFrontDistributionDistributionConfigAliases = Nothing
  , _cloudFrontDistributionDistributionConfigCacheBehaviors = Nothing
  , _cloudFrontDistributionDistributionConfigComment = Nothing
  , _cloudFrontDistributionDistributionConfigCustomErrorResponses = Nothing
  , _cloudFrontDistributionDistributionConfigDefaultCacheBehavior = defaultCacheBehaviorarg
  , _cloudFrontDistributionDistributionConfigDefaultRootObject = Nothing
  , _cloudFrontDistributionDistributionConfigEnabled = enabledarg
  , _cloudFrontDistributionDistributionConfigHttpVersion = Nothing
  , _cloudFrontDistributionDistributionConfigLogging = Nothing
  , _cloudFrontDistributionDistributionConfigOrigins = originsarg
  , _cloudFrontDistributionDistributionConfigPriceClass = Nothing
  , _cloudFrontDistributionDistributionConfigRestrictions = Nothing
  , _cloudFrontDistributionDistributionConfigViewerCertificate = Nothing
  , _cloudFrontDistributionDistributionConfigWebACLId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-aliases
cfddcAliases :: Lens' CloudFrontDistributionDistributionConfig (Maybe [Val Text])
cfddcAliases = lens _cloudFrontDistributionDistributionConfigAliases (\s a -> s { _cloudFrontDistributionDistributionConfigAliases = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-cachebehaviors
cfddcCacheBehaviors :: Lens' CloudFrontDistributionDistributionConfig (Maybe [CloudFrontDistributionCacheBehavior])
cfddcCacheBehaviors = lens _cloudFrontDistributionDistributionConfigCacheBehaviors (\s a -> s { _cloudFrontDistributionDistributionConfigCacheBehaviors = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-comment
cfddcComment :: Lens' CloudFrontDistributionDistributionConfig (Maybe (Val Text))
cfddcComment = lens _cloudFrontDistributionDistributionConfigComment (\s a -> s { _cloudFrontDistributionDistributionConfigComment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-customerrorresponses
cfddcCustomErrorResponses :: Lens' CloudFrontDistributionDistributionConfig (Maybe [CloudFrontDistributionCustomErrorResponse])
cfddcCustomErrorResponses = lens _cloudFrontDistributionDistributionConfigCustomErrorResponses (\s a -> s { _cloudFrontDistributionDistributionConfigCustomErrorResponses = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-defaultcachebehavior
cfddcDefaultCacheBehavior :: Lens' CloudFrontDistributionDistributionConfig CloudFrontDistributionDefaultCacheBehavior
cfddcDefaultCacheBehavior = lens _cloudFrontDistributionDistributionConfigDefaultCacheBehavior (\s a -> s { _cloudFrontDistributionDistributionConfigDefaultCacheBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-defaultrootobject
cfddcDefaultRootObject :: Lens' CloudFrontDistributionDistributionConfig (Maybe (Val Text))
cfddcDefaultRootObject = lens _cloudFrontDistributionDistributionConfigDefaultRootObject (\s a -> s { _cloudFrontDistributionDistributionConfigDefaultRootObject = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-enabled
cfddcEnabled :: Lens' CloudFrontDistributionDistributionConfig (Val Bool')
cfddcEnabled = lens _cloudFrontDistributionDistributionConfigEnabled (\s a -> s { _cloudFrontDistributionDistributionConfigEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-httpversion
cfddcHttpVersion :: Lens' CloudFrontDistributionDistributionConfig (Maybe (Val Text))
cfddcHttpVersion = lens _cloudFrontDistributionDistributionConfigHttpVersion (\s a -> s { _cloudFrontDistributionDistributionConfigHttpVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-logging
cfddcLogging :: Lens' CloudFrontDistributionDistributionConfig (Maybe CloudFrontDistributionLogging)
cfddcLogging = lens _cloudFrontDistributionDistributionConfigLogging (\s a -> s { _cloudFrontDistributionDistributionConfigLogging = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-origins
cfddcOrigins :: Lens' CloudFrontDistributionDistributionConfig [CloudFrontDistributionOrigin]
cfddcOrigins = lens _cloudFrontDistributionDistributionConfigOrigins (\s a -> s { _cloudFrontDistributionDistributionConfigOrigins = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-priceclass
cfddcPriceClass :: Lens' CloudFrontDistributionDistributionConfig (Maybe (Val Text))
cfddcPriceClass = lens _cloudFrontDistributionDistributionConfigPriceClass (\s a -> s { _cloudFrontDistributionDistributionConfigPriceClass = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-restrictions
cfddcRestrictions :: Lens' CloudFrontDistributionDistributionConfig (Maybe CloudFrontDistributionRestrictions)
cfddcRestrictions = lens _cloudFrontDistributionDistributionConfigRestrictions (\s a -> s { _cloudFrontDistributionDistributionConfigRestrictions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-viewercertificate
cfddcViewerCertificate :: Lens' CloudFrontDistributionDistributionConfig (Maybe CloudFrontDistributionViewerCertificate)
cfddcViewerCertificate = lens _cloudFrontDistributionDistributionConfigViewerCertificate (\s a -> s { _cloudFrontDistributionDistributionConfigViewerCertificate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig.html#cfn-cloudfront-distributionconfig-webaclid
cfddcWebACLId :: Lens' CloudFrontDistributionDistributionConfig (Maybe (Val Text))
cfddcWebACLId = lens _cloudFrontDistributionDistributionConfigWebACLId (\s a -> s { _cloudFrontDistributionDistributionConfigWebACLId = a })
