{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html

module Stratosphere.ResourceProperties.CloudFrontDistributionDistributionConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudFrontDistributionCacheBehavior
import Stratosphere.ResourceProperties.CloudFrontDistributionCustomErrorResponse
import Stratosphere.ResourceProperties.CloudFrontDistributionDefaultCacheBehavior
import Stratosphere.ResourceProperties.CloudFrontDistributionLogging
import Stratosphere.ResourceProperties.CloudFrontDistributionOrigin
import Stratosphere.ResourceProperties.CloudFrontDistributionRestrictions
import Stratosphere.ResourceProperties.CloudFrontDistributionViewerCertificate

-- | Full data type definition for CloudFrontDistributionDistributionConfig.
-- See 'cloudFrontDistributionDistributionConfig' for a more convenient
-- constructor.
data CloudFrontDistributionDistributionConfig =
  CloudFrontDistributionDistributionConfig
  { _cloudFrontDistributionDistributionConfigAliases :: Maybe (ValList Text)
  , _cloudFrontDistributionDistributionConfigCacheBehaviors :: Maybe [CloudFrontDistributionCacheBehavior]
  , _cloudFrontDistributionDistributionConfigComment :: Maybe (Val Text)
  , _cloudFrontDistributionDistributionConfigCustomErrorResponses :: Maybe [CloudFrontDistributionCustomErrorResponse]
  , _cloudFrontDistributionDistributionConfigDefaultCacheBehavior :: Maybe CloudFrontDistributionDefaultCacheBehavior
  , _cloudFrontDistributionDistributionConfigDefaultRootObject :: Maybe (Val Text)
  , _cloudFrontDistributionDistributionConfigEnabled :: Val Bool
  , _cloudFrontDistributionDistributionConfigHttpVersion :: Maybe (Val Text)
  , _cloudFrontDistributionDistributionConfigIPV6Enabled :: Maybe (Val Bool)
  , _cloudFrontDistributionDistributionConfigLogging :: Maybe CloudFrontDistributionLogging
  , _cloudFrontDistributionDistributionConfigOrigins :: Maybe [CloudFrontDistributionOrigin]
  , _cloudFrontDistributionDistributionConfigPriceClass :: Maybe (Val Text)
  , _cloudFrontDistributionDistributionConfigRestrictions :: Maybe CloudFrontDistributionRestrictions
  , _cloudFrontDistributionDistributionConfigViewerCertificate :: Maybe CloudFrontDistributionViewerCertificate
  , _cloudFrontDistributionDistributionConfigWebACLId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionDistributionConfig where
  toJSON CloudFrontDistributionDistributionConfig{..} =
    object $
    catMaybes
    [ fmap (("Aliases",) . toJSON) _cloudFrontDistributionDistributionConfigAliases
    , fmap (("CacheBehaviors",) . toJSON) _cloudFrontDistributionDistributionConfigCacheBehaviors
    , fmap (("Comment",) . toJSON) _cloudFrontDistributionDistributionConfigComment
    , fmap (("CustomErrorResponses",) . toJSON) _cloudFrontDistributionDistributionConfigCustomErrorResponses
    , fmap (("DefaultCacheBehavior",) . toJSON) _cloudFrontDistributionDistributionConfigDefaultCacheBehavior
    , fmap (("DefaultRootObject",) . toJSON) _cloudFrontDistributionDistributionConfigDefaultRootObject
    , (Just . ("Enabled",) . toJSON . fmap Bool') _cloudFrontDistributionDistributionConfigEnabled
    , fmap (("HttpVersion",) . toJSON) _cloudFrontDistributionDistributionConfigHttpVersion
    , fmap (("IPV6Enabled",) . toJSON . fmap Bool') _cloudFrontDistributionDistributionConfigIPV6Enabled
    , fmap (("Logging",) . toJSON) _cloudFrontDistributionDistributionConfigLogging
    , fmap (("Origins",) . toJSON) _cloudFrontDistributionDistributionConfigOrigins
    , fmap (("PriceClass",) . toJSON) _cloudFrontDistributionDistributionConfigPriceClass
    , fmap (("Restrictions",) . toJSON) _cloudFrontDistributionDistributionConfigRestrictions
    , fmap (("ViewerCertificate",) . toJSON) _cloudFrontDistributionDistributionConfigViewerCertificate
    , fmap (("WebACLId",) . toJSON) _cloudFrontDistributionDistributionConfigWebACLId
    ]

-- | Constructor for 'CloudFrontDistributionDistributionConfig' containing
-- required fields as arguments.
cloudFrontDistributionDistributionConfig
  :: Val Bool -- ^ 'cfddcEnabled'
  -> CloudFrontDistributionDistributionConfig
cloudFrontDistributionDistributionConfig enabledarg =
  CloudFrontDistributionDistributionConfig
  { _cloudFrontDistributionDistributionConfigAliases = Nothing
  , _cloudFrontDistributionDistributionConfigCacheBehaviors = Nothing
  , _cloudFrontDistributionDistributionConfigComment = Nothing
  , _cloudFrontDistributionDistributionConfigCustomErrorResponses = Nothing
  , _cloudFrontDistributionDistributionConfigDefaultCacheBehavior = Nothing
  , _cloudFrontDistributionDistributionConfigDefaultRootObject = Nothing
  , _cloudFrontDistributionDistributionConfigEnabled = enabledarg
  , _cloudFrontDistributionDistributionConfigHttpVersion = Nothing
  , _cloudFrontDistributionDistributionConfigIPV6Enabled = Nothing
  , _cloudFrontDistributionDistributionConfigLogging = Nothing
  , _cloudFrontDistributionDistributionConfigOrigins = Nothing
  , _cloudFrontDistributionDistributionConfigPriceClass = Nothing
  , _cloudFrontDistributionDistributionConfigRestrictions = Nothing
  , _cloudFrontDistributionDistributionConfigViewerCertificate = Nothing
  , _cloudFrontDistributionDistributionConfigWebACLId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-aliases
cfddcAliases :: Lens' CloudFrontDistributionDistributionConfig (Maybe (ValList Text))
cfddcAliases = lens _cloudFrontDistributionDistributionConfigAliases (\s a -> s { _cloudFrontDistributionDistributionConfigAliases = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-cachebehaviors
cfddcCacheBehaviors :: Lens' CloudFrontDistributionDistributionConfig (Maybe [CloudFrontDistributionCacheBehavior])
cfddcCacheBehaviors = lens _cloudFrontDistributionDistributionConfigCacheBehaviors (\s a -> s { _cloudFrontDistributionDistributionConfigCacheBehaviors = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-comment
cfddcComment :: Lens' CloudFrontDistributionDistributionConfig (Maybe (Val Text))
cfddcComment = lens _cloudFrontDistributionDistributionConfigComment (\s a -> s { _cloudFrontDistributionDistributionConfigComment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-customerrorresponses
cfddcCustomErrorResponses :: Lens' CloudFrontDistributionDistributionConfig (Maybe [CloudFrontDistributionCustomErrorResponse])
cfddcCustomErrorResponses = lens _cloudFrontDistributionDistributionConfigCustomErrorResponses (\s a -> s { _cloudFrontDistributionDistributionConfigCustomErrorResponses = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-defaultcachebehavior
cfddcDefaultCacheBehavior :: Lens' CloudFrontDistributionDistributionConfig (Maybe CloudFrontDistributionDefaultCacheBehavior)
cfddcDefaultCacheBehavior = lens _cloudFrontDistributionDistributionConfigDefaultCacheBehavior (\s a -> s { _cloudFrontDistributionDistributionConfigDefaultCacheBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-defaultrootobject
cfddcDefaultRootObject :: Lens' CloudFrontDistributionDistributionConfig (Maybe (Val Text))
cfddcDefaultRootObject = lens _cloudFrontDistributionDistributionConfigDefaultRootObject (\s a -> s { _cloudFrontDistributionDistributionConfigDefaultRootObject = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-enabled
cfddcEnabled :: Lens' CloudFrontDistributionDistributionConfig (Val Bool)
cfddcEnabled = lens _cloudFrontDistributionDistributionConfigEnabled (\s a -> s { _cloudFrontDistributionDistributionConfigEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-httpversion
cfddcHttpVersion :: Lens' CloudFrontDistributionDistributionConfig (Maybe (Val Text))
cfddcHttpVersion = lens _cloudFrontDistributionDistributionConfigHttpVersion (\s a -> s { _cloudFrontDistributionDistributionConfigHttpVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-ipv6enabled
cfddcIPV6Enabled :: Lens' CloudFrontDistributionDistributionConfig (Maybe (Val Bool))
cfddcIPV6Enabled = lens _cloudFrontDistributionDistributionConfigIPV6Enabled (\s a -> s { _cloudFrontDistributionDistributionConfigIPV6Enabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-logging
cfddcLogging :: Lens' CloudFrontDistributionDistributionConfig (Maybe CloudFrontDistributionLogging)
cfddcLogging = lens _cloudFrontDistributionDistributionConfigLogging (\s a -> s { _cloudFrontDistributionDistributionConfigLogging = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-origins
cfddcOrigins :: Lens' CloudFrontDistributionDistributionConfig (Maybe [CloudFrontDistributionOrigin])
cfddcOrigins = lens _cloudFrontDistributionDistributionConfigOrigins (\s a -> s { _cloudFrontDistributionDistributionConfigOrigins = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-priceclass
cfddcPriceClass :: Lens' CloudFrontDistributionDistributionConfig (Maybe (Val Text))
cfddcPriceClass = lens _cloudFrontDistributionDistributionConfigPriceClass (\s a -> s { _cloudFrontDistributionDistributionConfigPriceClass = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-restrictions
cfddcRestrictions :: Lens' CloudFrontDistributionDistributionConfig (Maybe CloudFrontDistributionRestrictions)
cfddcRestrictions = lens _cloudFrontDistributionDistributionConfigRestrictions (\s a -> s { _cloudFrontDistributionDistributionConfigRestrictions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-viewercertificate
cfddcViewerCertificate :: Lens' CloudFrontDistributionDistributionConfig (Maybe CloudFrontDistributionViewerCertificate)
cfddcViewerCertificate = lens _cloudFrontDistributionDistributionConfigViewerCertificate (\s a -> s { _cloudFrontDistributionDistributionConfigViewerCertificate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-distributionconfig.html#cfn-cloudfront-distribution-distributionconfig-webaclid
cfddcWebACLId :: Lens' CloudFrontDistributionDistributionConfig (Maybe (Val Text))
cfddcWebACLId = lens _cloudFrontDistributionDistributionConfigWebACLId (\s a -> s { _cloudFrontDistributionDistributionConfigWebACLId = a })
