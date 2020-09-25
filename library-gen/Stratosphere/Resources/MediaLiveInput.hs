{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-input.html

module Stratosphere.Resources.MediaLiveInput where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MediaLiveInputInputDestinationRequest
import Stratosphere.ResourceProperties.MediaLiveInputInputDeviceSettings
import Stratosphere.ResourceProperties.MediaLiveInputMediaConnectFlowRequest
import Stratosphere.ResourceProperties.MediaLiveInputInputSourceRequest
import Stratosphere.ResourceProperties.MediaLiveInputInputVpcRequest

-- | Full data type definition for MediaLiveInput. See 'mediaLiveInput' for a
-- more convenient constructor.
data MediaLiveInput =
  MediaLiveInput
  { _mediaLiveInputDestinations :: Maybe [MediaLiveInputInputDestinationRequest]
  , _mediaLiveInputInputDevices :: Maybe [MediaLiveInputInputDeviceSettings]
  , _mediaLiveInputInputSecurityGroups :: Maybe (ValList Text)
  , _mediaLiveInputMediaConnectFlows :: Maybe [MediaLiveInputMediaConnectFlowRequest]
  , _mediaLiveInputName :: Maybe (Val Text)
  , _mediaLiveInputRoleArn :: Maybe (Val Text)
  , _mediaLiveInputSources :: Maybe [MediaLiveInputInputSourceRequest]
  , _mediaLiveInputTags :: Maybe Object
  , _mediaLiveInputType :: Maybe (Val Text)
  , _mediaLiveInputVpc :: Maybe MediaLiveInputInputVpcRequest
  } deriving (Show, Eq)

instance ToResourceProperties MediaLiveInput where
  toResourceProperties MediaLiveInput{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::MediaLive::Input"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("Destinations",) . toJSON) _mediaLiveInputDestinations
        , fmap (("InputDevices",) . toJSON) _mediaLiveInputInputDevices
        , fmap (("InputSecurityGroups",) . toJSON) _mediaLiveInputInputSecurityGroups
        , fmap (("MediaConnectFlows",) . toJSON) _mediaLiveInputMediaConnectFlows
        , fmap (("Name",) . toJSON) _mediaLiveInputName
        , fmap (("RoleArn",) . toJSON) _mediaLiveInputRoleArn
        , fmap (("Sources",) . toJSON) _mediaLiveInputSources
        , fmap (("Tags",) . toJSON) _mediaLiveInputTags
        , fmap (("Type",) . toJSON) _mediaLiveInputType
        , fmap (("Vpc",) . toJSON) _mediaLiveInputVpc
        ]
    }

-- | Constructor for 'MediaLiveInput' containing required fields as arguments.
mediaLiveInput
  :: MediaLiveInput
mediaLiveInput  =
  MediaLiveInput
  { _mediaLiveInputDestinations = Nothing
  , _mediaLiveInputInputDevices = Nothing
  , _mediaLiveInputInputSecurityGroups = Nothing
  , _mediaLiveInputMediaConnectFlows = Nothing
  , _mediaLiveInputName = Nothing
  , _mediaLiveInputRoleArn = Nothing
  , _mediaLiveInputSources = Nothing
  , _mediaLiveInputTags = Nothing
  , _mediaLiveInputType = Nothing
  , _mediaLiveInputVpc = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-input.html#cfn-medialive-input-destinations
mliDestinations :: Lens' MediaLiveInput (Maybe [MediaLiveInputInputDestinationRequest])
mliDestinations = lens _mediaLiveInputDestinations (\s a -> s { _mediaLiveInputDestinations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-input.html#cfn-medialive-input-inputdevices
mliInputDevices :: Lens' MediaLiveInput (Maybe [MediaLiveInputInputDeviceSettings])
mliInputDevices = lens _mediaLiveInputInputDevices (\s a -> s { _mediaLiveInputInputDevices = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-input.html#cfn-medialive-input-inputsecuritygroups
mliInputSecurityGroups :: Lens' MediaLiveInput (Maybe (ValList Text))
mliInputSecurityGroups = lens _mediaLiveInputInputSecurityGroups (\s a -> s { _mediaLiveInputInputSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-input.html#cfn-medialive-input-mediaconnectflows
mliMediaConnectFlows :: Lens' MediaLiveInput (Maybe [MediaLiveInputMediaConnectFlowRequest])
mliMediaConnectFlows = lens _mediaLiveInputMediaConnectFlows (\s a -> s { _mediaLiveInputMediaConnectFlows = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-input.html#cfn-medialive-input-name
mliName :: Lens' MediaLiveInput (Maybe (Val Text))
mliName = lens _mediaLiveInputName (\s a -> s { _mediaLiveInputName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-input.html#cfn-medialive-input-rolearn
mliRoleArn :: Lens' MediaLiveInput (Maybe (Val Text))
mliRoleArn = lens _mediaLiveInputRoleArn (\s a -> s { _mediaLiveInputRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-input.html#cfn-medialive-input-sources
mliSources :: Lens' MediaLiveInput (Maybe [MediaLiveInputInputSourceRequest])
mliSources = lens _mediaLiveInputSources (\s a -> s { _mediaLiveInputSources = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-input.html#cfn-medialive-input-tags
mliTags :: Lens' MediaLiveInput (Maybe Object)
mliTags = lens _mediaLiveInputTags (\s a -> s { _mediaLiveInputTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-input.html#cfn-medialive-input-type
mliType :: Lens' MediaLiveInput (Maybe (Val Text))
mliType = lens _mediaLiveInputType (\s a -> s { _mediaLiveInputType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-input.html#cfn-medialive-input-vpc
mliVpc :: Lens' MediaLiveInput (Maybe MediaLiveInputInputVpcRequest)
mliVpc = lens _mediaLiveInputVpc (\s a -> s { _mediaLiveInputVpc = a })
