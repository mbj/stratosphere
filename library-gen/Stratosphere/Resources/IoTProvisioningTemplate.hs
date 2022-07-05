{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-provisioningtemplate.html

module Stratosphere.Resources.IoTProvisioningTemplate where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTProvisioningTemplateProvisioningHook
import Stratosphere.ResourceProperties.IoTProvisioningTemplateTags

-- | Full data type definition for IoTProvisioningTemplate. See
-- 'ioTProvisioningTemplate' for a more convenient constructor.
data IoTProvisioningTemplate =
  IoTProvisioningTemplate
  { _ioTProvisioningTemplateDescription :: Maybe (Val Text)
  , _ioTProvisioningTemplateEnabled :: Maybe (Val Bool)
  , _ioTProvisioningTemplatePreProvisioningHook :: Maybe IoTProvisioningTemplateProvisioningHook
  , _ioTProvisioningTemplateProvisioningRoleArn :: Val Text
  , _ioTProvisioningTemplateTags :: Maybe IoTProvisioningTemplateTags
  , _ioTProvisioningTemplateTemplateBody :: Val Text
  , _ioTProvisioningTemplateTemplateName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties IoTProvisioningTemplate where
  toResourceProperties IoTProvisioningTemplate{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::IoT::ProvisioningTemplate"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _ioTProvisioningTemplateDescription
        , fmap (("Enabled",) . toJSON) _ioTProvisioningTemplateEnabled
        , fmap (("PreProvisioningHook",) . toJSON) _ioTProvisioningTemplatePreProvisioningHook
        , (Just . ("ProvisioningRoleArn",) . toJSON) _ioTProvisioningTemplateProvisioningRoleArn
        , fmap (("Tags",) . toJSON) _ioTProvisioningTemplateTags
        , (Just . ("TemplateBody",) . toJSON) _ioTProvisioningTemplateTemplateBody
        , fmap (("TemplateName",) . toJSON) _ioTProvisioningTemplateTemplateName
        ]
    }

-- | Constructor for 'IoTProvisioningTemplate' containing required fields as
-- arguments.
ioTProvisioningTemplate
  :: Val Text -- ^ 'itptProvisioningRoleArn'
  -> Val Text -- ^ 'itptTemplateBody'
  -> IoTProvisioningTemplate
ioTProvisioningTemplate provisioningRoleArnarg templateBodyarg =
  IoTProvisioningTemplate
  { _ioTProvisioningTemplateDescription = Nothing
  , _ioTProvisioningTemplateEnabled = Nothing
  , _ioTProvisioningTemplatePreProvisioningHook = Nothing
  , _ioTProvisioningTemplateProvisioningRoleArn = provisioningRoleArnarg
  , _ioTProvisioningTemplateTags = Nothing
  , _ioTProvisioningTemplateTemplateBody = templateBodyarg
  , _ioTProvisioningTemplateTemplateName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-provisioningtemplate.html#cfn-iot-provisioningtemplate-description
itptDescription :: Lens' IoTProvisioningTemplate (Maybe (Val Text))
itptDescription = lens _ioTProvisioningTemplateDescription (\s a -> s { _ioTProvisioningTemplateDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-provisioningtemplate.html#cfn-iot-provisioningtemplate-enabled
itptEnabled :: Lens' IoTProvisioningTemplate (Maybe (Val Bool))
itptEnabled = lens _ioTProvisioningTemplateEnabled (\s a -> s { _ioTProvisioningTemplateEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-provisioningtemplate.html#cfn-iot-provisioningtemplate-preprovisioninghook
itptPreProvisioningHook :: Lens' IoTProvisioningTemplate (Maybe IoTProvisioningTemplateProvisioningHook)
itptPreProvisioningHook = lens _ioTProvisioningTemplatePreProvisioningHook (\s a -> s { _ioTProvisioningTemplatePreProvisioningHook = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-provisioningtemplate.html#cfn-iot-provisioningtemplate-provisioningrolearn
itptProvisioningRoleArn :: Lens' IoTProvisioningTemplate (Val Text)
itptProvisioningRoleArn = lens _ioTProvisioningTemplateProvisioningRoleArn (\s a -> s { _ioTProvisioningTemplateProvisioningRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-provisioningtemplate.html#cfn-iot-provisioningtemplate-tags
itptTags :: Lens' IoTProvisioningTemplate (Maybe IoTProvisioningTemplateTags)
itptTags = lens _ioTProvisioningTemplateTags (\s a -> s { _ioTProvisioningTemplateTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-provisioningtemplate.html#cfn-iot-provisioningtemplate-templatebody
itptTemplateBody :: Lens' IoTProvisioningTemplate (Val Text)
itptTemplateBody = lens _ioTProvisioningTemplateTemplateBody (\s a -> s { _ioTProvisioningTemplateTemplateBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-provisioningtemplate.html#cfn-iot-provisioningtemplate-templatename
itptTemplateName :: Lens' IoTProvisioningTemplate (Maybe (Val Text))
itptTemplateName = lens _ioTProvisioningTemplateTemplateName (\s a -> s { _ioTProvisioningTemplateTemplateName = a })
