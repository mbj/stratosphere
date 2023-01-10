
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-provisioningtemplate-provisioninghook.html

module Stratosphere.ResourceProperties.IoTProvisioningTemplateProvisioningHook where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTProvisioningTemplateProvisioningHook.
-- See 'ioTProvisioningTemplateProvisioningHook' for a more convenient
-- constructor.
data IoTProvisioningTemplateProvisioningHook =
  IoTProvisioningTemplateProvisioningHook
  { _ioTProvisioningTemplateProvisioningHookPayloadVersion :: Maybe (Val Text)
  , _ioTProvisioningTemplateProvisioningHookTargetArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTProvisioningTemplateProvisioningHook where
  toJSON IoTProvisioningTemplateProvisioningHook{..} =
    object $
    catMaybes
    [ fmap (("PayloadVersion",) . toJSON) _ioTProvisioningTemplateProvisioningHookPayloadVersion
    , fmap (("TargetArn",) . toJSON) _ioTProvisioningTemplateProvisioningHookTargetArn
    ]

-- | Constructor for 'IoTProvisioningTemplateProvisioningHook' containing
-- required fields as arguments.
ioTProvisioningTemplateProvisioningHook
  :: IoTProvisioningTemplateProvisioningHook
ioTProvisioningTemplateProvisioningHook  =
  IoTProvisioningTemplateProvisioningHook
  { _ioTProvisioningTemplateProvisioningHookPayloadVersion = Nothing
  , _ioTProvisioningTemplateProvisioningHookTargetArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-provisioningtemplate-provisioninghook.html#cfn-iot-provisioningtemplate-provisioninghook-payloadversion
itptphPayloadVersion :: Lens' IoTProvisioningTemplateProvisioningHook (Maybe (Val Text))
itptphPayloadVersion = lens _ioTProvisioningTemplateProvisioningHookPayloadVersion (\s a -> s { _ioTProvisioningTemplateProvisioningHookPayloadVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-provisioningtemplate-provisioninghook.html#cfn-iot-provisioningtemplate-provisioninghook-targetarn
itptphTargetArn :: Lens' IoTProvisioningTemplateProvisioningHook (Maybe (Val Text))
itptphTargetArn = lens _ioTProvisioningTemplateProvisioningHookTargetArn (\s a -> s { _ioTProvisioningTemplateProvisioningHookTargetArn = a })
