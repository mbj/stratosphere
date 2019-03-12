{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot1click-project-placementtemplate.html

module Stratosphere.ResourceProperties.IoT1ClickProjectPlacementTemplate where

import Stratosphere.ResourceImports


-- | Full data type definition for IoT1ClickProjectPlacementTemplate. See
-- 'ioT1ClickProjectPlacementTemplate' for a more convenient constructor.
data IoT1ClickProjectPlacementTemplate =
  IoT1ClickProjectPlacementTemplate
  { _ioT1ClickProjectPlacementTemplateDefaultAttributes :: Maybe Object
  , _ioT1ClickProjectPlacementTemplateDeviceTemplates :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON IoT1ClickProjectPlacementTemplate where
  toJSON IoT1ClickProjectPlacementTemplate{..} =
    object $
    catMaybes
    [ fmap (("DefaultAttributes",) . toJSON) _ioT1ClickProjectPlacementTemplateDefaultAttributes
    , fmap (("DeviceTemplates",) . toJSON) _ioT1ClickProjectPlacementTemplateDeviceTemplates
    ]

-- | Constructor for 'IoT1ClickProjectPlacementTemplate' containing required
-- fields as arguments.
ioT1ClickProjectPlacementTemplate
  :: IoT1ClickProjectPlacementTemplate
ioT1ClickProjectPlacementTemplate  =
  IoT1ClickProjectPlacementTemplate
  { _ioT1ClickProjectPlacementTemplateDefaultAttributes = Nothing
  , _ioT1ClickProjectPlacementTemplateDeviceTemplates = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot1click-project-placementtemplate.html#cfn-iot1click-project-placementtemplate-defaultattributes
itcpptDefaultAttributes :: Lens' IoT1ClickProjectPlacementTemplate (Maybe Object)
itcpptDefaultAttributes = lens _ioT1ClickProjectPlacementTemplateDefaultAttributes (\s a -> s { _ioT1ClickProjectPlacementTemplateDefaultAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot1click-project-placementtemplate.html#cfn-iot1click-project-placementtemplate-devicetemplates
itcpptDeviceTemplates :: Lens' IoT1ClickProjectPlacementTemplate (Maybe Object)
itcpptDeviceTemplates = lens _ioT1ClickProjectPlacementTemplateDeviceTemplates (\s a -> s { _ioT1ClickProjectPlacementTemplateDeviceTemplates = a })
