
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-provisioningtemplate-tags.html

module Stratosphere.ResourceProperties.IoTProvisioningTemplateTags where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTProvisioningTemplateTags. See
-- 'ioTProvisioningTemplateTags' for a more convenient constructor.
data IoTProvisioningTemplateTags =
  IoTProvisioningTemplateTags
  { _ioTProvisioningTemplateTagsTags :: Maybe [Object]
  } deriving (Show, Eq)

instance ToJSON IoTProvisioningTemplateTags where
  toJSON IoTProvisioningTemplateTags{..} =
    object $
    catMaybes
    [ fmap (("Tags",) . toJSON) _ioTProvisioningTemplateTagsTags
    ]

-- | Constructor for 'IoTProvisioningTemplateTags' containing required fields
-- as arguments.
ioTProvisioningTemplateTags
  :: IoTProvisioningTemplateTags
ioTProvisioningTemplateTags  =
  IoTProvisioningTemplateTags
  { _ioTProvisioningTemplateTagsTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-provisioningtemplate-tags.html#cfn-iot-provisioningtemplate-tags-tags
itpttTags :: Lens' IoTProvisioningTemplateTags (Maybe [Object])
itpttTags = lens _ioTProvisioningTemplateTagsTags (\s a -> s { _ioTProvisioningTemplateTagsTags = a })
