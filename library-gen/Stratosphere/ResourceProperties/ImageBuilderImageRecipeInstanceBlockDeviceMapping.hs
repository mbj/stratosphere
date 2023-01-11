
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-instanceblockdevicemapping.html

module Stratosphere.ResourceProperties.ImageBuilderImageRecipeInstanceBlockDeviceMapping where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ImageBuilderImageRecipeEbsInstanceBlockDeviceSpecification

-- | Full data type definition for
-- ImageBuilderImageRecipeInstanceBlockDeviceMapping. See
-- 'imageBuilderImageRecipeInstanceBlockDeviceMapping' for a more convenient
-- constructor.
data ImageBuilderImageRecipeInstanceBlockDeviceMapping =
  ImageBuilderImageRecipeInstanceBlockDeviceMapping
  { _imageBuilderImageRecipeInstanceBlockDeviceMappingDeviceName :: Maybe (Val Text)
  , _imageBuilderImageRecipeInstanceBlockDeviceMappingEbs :: Maybe ImageBuilderImageRecipeEbsInstanceBlockDeviceSpecification
  , _imageBuilderImageRecipeInstanceBlockDeviceMappingNoDevice :: Maybe (Val Text)
  , _imageBuilderImageRecipeInstanceBlockDeviceMappingVirtualName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ImageBuilderImageRecipeInstanceBlockDeviceMapping where
  toJSON ImageBuilderImageRecipeInstanceBlockDeviceMapping{..} =
    object $
    catMaybes
    [ fmap (("DeviceName",) . toJSON) _imageBuilderImageRecipeInstanceBlockDeviceMappingDeviceName
    , fmap (("Ebs",) . toJSON) _imageBuilderImageRecipeInstanceBlockDeviceMappingEbs
    , fmap (("NoDevice",) . toJSON) _imageBuilderImageRecipeInstanceBlockDeviceMappingNoDevice
    , fmap (("VirtualName",) . toJSON) _imageBuilderImageRecipeInstanceBlockDeviceMappingVirtualName
    ]

-- | Constructor for 'ImageBuilderImageRecipeInstanceBlockDeviceMapping'
-- containing required fields as arguments.
imageBuilderImageRecipeInstanceBlockDeviceMapping
  :: ImageBuilderImageRecipeInstanceBlockDeviceMapping
imageBuilderImageRecipeInstanceBlockDeviceMapping  =
  ImageBuilderImageRecipeInstanceBlockDeviceMapping
  { _imageBuilderImageRecipeInstanceBlockDeviceMappingDeviceName = Nothing
  , _imageBuilderImageRecipeInstanceBlockDeviceMappingEbs = Nothing
  , _imageBuilderImageRecipeInstanceBlockDeviceMappingNoDevice = Nothing
  , _imageBuilderImageRecipeInstanceBlockDeviceMappingVirtualName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-instanceblockdevicemapping.html#cfn-imagebuilder-imagerecipe-instanceblockdevicemapping-devicename
ibiribdmDeviceName :: Lens' ImageBuilderImageRecipeInstanceBlockDeviceMapping (Maybe (Val Text))
ibiribdmDeviceName = lens _imageBuilderImageRecipeInstanceBlockDeviceMappingDeviceName (\s a -> s { _imageBuilderImageRecipeInstanceBlockDeviceMappingDeviceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-instanceblockdevicemapping.html#cfn-imagebuilder-imagerecipe-instanceblockdevicemapping-ebs
ibiribdmEbs :: Lens' ImageBuilderImageRecipeInstanceBlockDeviceMapping (Maybe ImageBuilderImageRecipeEbsInstanceBlockDeviceSpecification)
ibiribdmEbs = lens _imageBuilderImageRecipeInstanceBlockDeviceMappingEbs (\s a -> s { _imageBuilderImageRecipeInstanceBlockDeviceMappingEbs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-instanceblockdevicemapping.html#cfn-imagebuilder-imagerecipe-instanceblockdevicemapping-nodevice
ibiribdmNoDevice :: Lens' ImageBuilderImageRecipeInstanceBlockDeviceMapping (Maybe (Val Text))
ibiribdmNoDevice = lens _imageBuilderImageRecipeInstanceBlockDeviceMappingNoDevice (\s a -> s { _imageBuilderImageRecipeInstanceBlockDeviceMappingNoDevice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-instanceblockdevicemapping.html#cfn-imagebuilder-imagerecipe-instanceblockdevicemapping-virtualname
ibiribdmVirtualName :: Lens' ImageBuilderImageRecipeInstanceBlockDeviceMapping (Maybe (Val Text))
ibiribdmVirtualName = lens _imageBuilderImageRecipeInstanceBlockDeviceMappingVirtualName (\s a -> s { _imageBuilderImageRecipeInstanceBlockDeviceMappingVirtualName = a })
