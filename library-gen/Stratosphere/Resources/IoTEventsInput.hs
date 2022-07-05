{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-input.html

module Stratosphere.Resources.IoTEventsInput where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTEventsInputInputDefinition
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for IoTEventsInput. See 'ioTEventsInput' for a
-- more convenient constructor.
data IoTEventsInput =
  IoTEventsInput
  { _ioTEventsInputInputDefinition :: Maybe IoTEventsInputInputDefinition
  , _ioTEventsInputInputDescription :: Maybe (Val Text)
  , _ioTEventsInputInputName :: Maybe (Val Text)
  , _ioTEventsInputTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties IoTEventsInput where
  toResourceProperties IoTEventsInput{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::IoTEvents::Input"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("InputDefinition",) . toJSON) _ioTEventsInputInputDefinition
        , fmap (("InputDescription",) . toJSON) _ioTEventsInputInputDescription
        , fmap (("InputName",) . toJSON) _ioTEventsInputInputName
        , fmap (("Tags",) . toJSON) _ioTEventsInputTags
        ]
    }

-- | Constructor for 'IoTEventsInput' containing required fields as arguments.
ioTEventsInput
  :: IoTEventsInput
ioTEventsInput  =
  IoTEventsInput
  { _ioTEventsInputInputDefinition = Nothing
  , _ioTEventsInputInputDescription = Nothing
  , _ioTEventsInputInputName = Nothing
  , _ioTEventsInputTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-input.html#cfn-iotevents-input-inputdefinition
iteiInputDefinition :: Lens' IoTEventsInput (Maybe IoTEventsInputInputDefinition)
iteiInputDefinition = lens _ioTEventsInputInputDefinition (\s a -> s { _ioTEventsInputInputDefinition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-input.html#cfn-iotevents-input-inputdescription
iteiInputDescription :: Lens' IoTEventsInput (Maybe (Val Text))
iteiInputDescription = lens _ioTEventsInputInputDescription (\s a -> s { _ioTEventsInputInputDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-input.html#cfn-iotevents-input-inputname
iteiInputName :: Lens' IoTEventsInput (Maybe (Val Text))
iteiInputName = lens _ioTEventsInputInputName (\s a -> s { _ioTEventsInputInputName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-input.html#cfn-iotevents-input-tags
iteiTags :: Lens' IoTEventsInput (Maybe [Tag])
iteiTags = lens _ioTEventsInputTags (\s a -> s { _ioTEventsInputTags = a })
