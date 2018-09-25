{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot1click-project-devicetemplate.html

module Stratosphere.ResourceProperties.IoT1ClickProjectDeviceTemplate where

import Stratosphere.ResourceImports


-- | Full data type definition for IoT1ClickProjectDeviceTemplate. See
-- 'ioT1ClickProjectDeviceTemplate' for a more convenient constructor.
data IoT1ClickProjectDeviceTemplate =
  IoT1ClickProjectDeviceTemplate
  { _ioT1ClickProjectDeviceTemplateCallbackOverrides :: Maybe Object
  , _ioT1ClickProjectDeviceTemplateDeviceType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoT1ClickProjectDeviceTemplate where
  toJSON IoT1ClickProjectDeviceTemplate{..} =
    object $
    catMaybes
    [ fmap (("CallbackOverrides",) . toJSON) _ioT1ClickProjectDeviceTemplateCallbackOverrides
    , fmap (("DeviceType",) . toJSON) _ioT1ClickProjectDeviceTemplateDeviceType
    ]

instance FromJSON IoT1ClickProjectDeviceTemplate where
  parseJSON (Object obj) =
    IoT1ClickProjectDeviceTemplate <$>
      (obj .:? "CallbackOverrides") <*>
      (obj .:? "DeviceType")
  parseJSON _ = mempty

-- | Constructor for 'IoT1ClickProjectDeviceTemplate' containing required
-- fields as arguments.
ioT1ClickProjectDeviceTemplate
  :: IoT1ClickProjectDeviceTemplate
ioT1ClickProjectDeviceTemplate  =
  IoT1ClickProjectDeviceTemplate
  { _ioT1ClickProjectDeviceTemplateCallbackOverrides = Nothing
  , _ioT1ClickProjectDeviceTemplateDeviceType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot1click-project-devicetemplate.html#cfn-iot1click-project-devicetemplate-callbackoverrides
itcpdtCallbackOverrides :: Lens' IoT1ClickProjectDeviceTemplate (Maybe Object)
itcpdtCallbackOverrides = lens _ioT1ClickProjectDeviceTemplateCallbackOverrides (\s a -> s { _ioT1ClickProjectDeviceTemplateCallbackOverrides = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot1click-project-devicetemplate.html#cfn-iot1click-project-devicetemplate-devicetype
itcpdtDeviceType :: Lens' IoT1ClickProjectDeviceTemplate (Maybe (Val Text))
itcpdtDeviceType = lens _ioT1ClickProjectDeviceTemplateDeviceType (\s a -> s { _ioT1ClickProjectDeviceTemplateDeviceType = a })
