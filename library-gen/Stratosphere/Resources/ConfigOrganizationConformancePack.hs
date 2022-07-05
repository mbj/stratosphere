{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconformancepack.html

module Stratosphere.Resources.ConfigOrganizationConformancePack where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ConfigOrganizationConformancePackConformancePackInputParameter

-- | Full data type definition for ConfigOrganizationConformancePack. See
-- 'configOrganizationConformancePack' for a more convenient constructor.
data ConfigOrganizationConformancePack =
  ConfigOrganizationConformancePack
  { _configOrganizationConformancePackConformancePackInputParameters :: Maybe [ConfigOrganizationConformancePackConformancePackInputParameter]
  , _configOrganizationConformancePackDeliveryS3Bucket :: Val Text
  , _configOrganizationConformancePackDeliveryS3KeyPrefix :: Maybe (Val Text)
  , _configOrganizationConformancePackExcludedAccounts :: Maybe (ValList Text)
  , _configOrganizationConformancePackOrganizationConformancePackName :: Val Text
  , _configOrganizationConformancePackTemplateBody :: Maybe (Val Text)
  , _configOrganizationConformancePackTemplateS3Uri :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties ConfigOrganizationConformancePack where
  toResourceProperties ConfigOrganizationConformancePack{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Config::OrganizationConformancePack"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ConformancePackInputParameters",) . toJSON) _configOrganizationConformancePackConformancePackInputParameters
        , (Just . ("DeliveryS3Bucket",) . toJSON) _configOrganizationConformancePackDeliveryS3Bucket
        , fmap (("DeliveryS3KeyPrefix",) . toJSON) _configOrganizationConformancePackDeliveryS3KeyPrefix
        , fmap (("ExcludedAccounts",) . toJSON) _configOrganizationConformancePackExcludedAccounts
        , (Just . ("OrganizationConformancePackName",) . toJSON) _configOrganizationConformancePackOrganizationConformancePackName
        , fmap (("TemplateBody",) . toJSON) _configOrganizationConformancePackTemplateBody
        , fmap (("TemplateS3Uri",) . toJSON) _configOrganizationConformancePackTemplateS3Uri
        ]
    }

-- | Constructor for 'ConfigOrganizationConformancePack' containing required
-- fields as arguments.
configOrganizationConformancePack
  :: Val Text -- ^ 'cocpDeliveryS3Bucket'
  -> Val Text -- ^ 'cocpOrganizationConformancePackName'
  -> ConfigOrganizationConformancePack
configOrganizationConformancePack deliveryS3Bucketarg organizationConformancePackNamearg =
  ConfigOrganizationConformancePack
  { _configOrganizationConformancePackConformancePackInputParameters = Nothing
  , _configOrganizationConformancePackDeliveryS3Bucket = deliveryS3Bucketarg
  , _configOrganizationConformancePackDeliveryS3KeyPrefix = Nothing
  , _configOrganizationConformancePackExcludedAccounts = Nothing
  , _configOrganizationConformancePackOrganizationConformancePackName = organizationConformancePackNamearg
  , _configOrganizationConformancePackTemplateBody = Nothing
  , _configOrganizationConformancePackTemplateS3Uri = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconformancepack.html#cfn-config-organizationconformancepack-conformancepackinputparameters
cocpConformancePackInputParameters :: Lens' ConfigOrganizationConformancePack (Maybe [ConfigOrganizationConformancePackConformancePackInputParameter])
cocpConformancePackInputParameters = lens _configOrganizationConformancePackConformancePackInputParameters (\s a -> s { _configOrganizationConformancePackConformancePackInputParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconformancepack.html#cfn-config-organizationconformancepack-deliverys3bucket
cocpDeliveryS3Bucket :: Lens' ConfigOrganizationConformancePack (Val Text)
cocpDeliveryS3Bucket = lens _configOrganizationConformancePackDeliveryS3Bucket (\s a -> s { _configOrganizationConformancePackDeliveryS3Bucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconformancepack.html#cfn-config-organizationconformancepack-deliverys3keyprefix
cocpDeliveryS3KeyPrefix :: Lens' ConfigOrganizationConformancePack (Maybe (Val Text))
cocpDeliveryS3KeyPrefix = lens _configOrganizationConformancePackDeliveryS3KeyPrefix (\s a -> s { _configOrganizationConformancePackDeliveryS3KeyPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconformancepack.html#cfn-config-organizationconformancepack-excludedaccounts
cocpExcludedAccounts :: Lens' ConfigOrganizationConformancePack (Maybe (ValList Text))
cocpExcludedAccounts = lens _configOrganizationConformancePackExcludedAccounts (\s a -> s { _configOrganizationConformancePackExcludedAccounts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconformancepack.html#cfn-config-organizationconformancepack-organizationconformancepackname
cocpOrganizationConformancePackName :: Lens' ConfigOrganizationConformancePack (Val Text)
cocpOrganizationConformancePackName = lens _configOrganizationConformancePackOrganizationConformancePackName (\s a -> s { _configOrganizationConformancePackOrganizationConformancePackName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconformancepack.html#cfn-config-organizationconformancepack-templatebody
cocpTemplateBody :: Lens' ConfigOrganizationConformancePack (Maybe (Val Text))
cocpTemplateBody = lens _configOrganizationConformancePackTemplateBody (\s a -> s { _configOrganizationConformancePackTemplateBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconformancepack.html#cfn-config-organizationconformancepack-templates3uri
cocpTemplateS3Uri :: Lens' ConfigOrganizationConformancePack (Maybe (Val Text))
cocpTemplateS3Uri = lens _configOrganizationConformancePackTemplateS3Uri (\s a -> s { _configOrganizationConformancePackTemplateS3Uri = a })
