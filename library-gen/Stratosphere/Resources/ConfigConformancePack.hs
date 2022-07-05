{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-conformancepack.html

module Stratosphere.Resources.ConfigConformancePack where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ConfigConformancePackConformancePackInputParameter

-- | Full data type definition for ConfigConformancePack. See
-- 'configConformancePack' for a more convenient constructor.
data ConfigConformancePack =
  ConfigConformancePack
  { _configConformancePackConformancePackInputParameters :: Maybe [ConfigConformancePackConformancePackInputParameter]
  , _configConformancePackConformancePackName :: Val Text
  , _configConformancePackDeliveryS3Bucket :: Val Text
  , _configConformancePackDeliveryS3KeyPrefix :: Maybe (Val Text)
  , _configConformancePackTemplateBody :: Maybe (Val Text)
  , _configConformancePackTemplateS3Uri :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties ConfigConformancePack where
  toResourceProperties ConfigConformancePack{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Config::ConformancePack"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ConformancePackInputParameters",) . toJSON) _configConformancePackConformancePackInputParameters
        , (Just . ("ConformancePackName",) . toJSON) _configConformancePackConformancePackName
        , (Just . ("DeliveryS3Bucket",) . toJSON) _configConformancePackDeliveryS3Bucket
        , fmap (("DeliveryS3KeyPrefix",) . toJSON) _configConformancePackDeliveryS3KeyPrefix
        , fmap (("TemplateBody",) . toJSON) _configConformancePackTemplateBody
        , fmap (("TemplateS3Uri",) . toJSON) _configConformancePackTemplateS3Uri
        ]
    }

-- | Constructor for 'ConfigConformancePack' containing required fields as
-- arguments.
configConformancePack
  :: Val Text -- ^ 'ccpConformancePackName'
  -> Val Text -- ^ 'ccpDeliveryS3Bucket'
  -> ConfigConformancePack
configConformancePack conformancePackNamearg deliveryS3Bucketarg =
  ConfigConformancePack
  { _configConformancePackConformancePackInputParameters = Nothing
  , _configConformancePackConformancePackName = conformancePackNamearg
  , _configConformancePackDeliveryS3Bucket = deliveryS3Bucketarg
  , _configConformancePackDeliveryS3KeyPrefix = Nothing
  , _configConformancePackTemplateBody = Nothing
  , _configConformancePackTemplateS3Uri = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-conformancepack.html#cfn-config-conformancepack-conformancepackinputparameters
ccpConformancePackInputParameters :: Lens' ConfigConformancePack (Maybe [ConfigConformancePackConformancePackInputParameter])
ccpConformancePackInputParameters = lens _configConformancePackConformancePackInputParameters (\s a -> s { _configConformancePackConformancePackInputParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-conformancepack.html#cfn-config-conformancepack-conformancepackname
ccpConformancePackName :: Lens' ConfigConformancePack (Val Text)
ccpConformancePackName = lens _configConformancePackConformancePackName (\s a -> s { _configConformancePackConformancePackName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-conformancepack.html#cfn-config-conformancepack-deliverys3bucket
ccpDeliveryS3Bucket :: Lens' ConfigConformancePack (Val Text)
ccpDeliveryS3Bucket = lens _configConformancePackDeliveryS3Bucket (\s a -> s { _configConformancePackDeliveryS3Bucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-conformancepack.html#cfn-config-conformancepack-deliverys3keyprefix
ccpDeliveryS3KeyPrefix :: Lens' ConfigConformancePack (Maybe (Val Text))
ccpDeliveryS3KeyPrefix = lens _configConformancePackDeliveryS3KeyPrefix (\s a -> s { _configConformancePackDeliveryS3KeyPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-conformancepack.html#cfn-config-conformancepack-templatebody
ccpTemplateBody :: Lens' ConfigConformancePack (Maybe (Val Text))
ccpTemplateBody = lens _configConformancePackTemplateBody (\s a -> s { _configConformancePackTemplateBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-conformancepack.html#cfn-config-conformancepack-templates3uri
ccpTemplateS3Uri :: Lens' ConfigConformancePack (Maybe (Val Text))
ccpTemplateS3Uri = lens _configConformancePackTemplateS3Uri (\s a -> s { _configConformancePackTemplateS3Uri = a })
