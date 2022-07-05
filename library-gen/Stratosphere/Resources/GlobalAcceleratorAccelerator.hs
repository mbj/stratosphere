{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-accelerator.html

module Stratosphere.Resources.GlobalAcceleratorAccelerator where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for GlobalAcceleratorAccelerator. See
-- 'globalAcceleratorAccelerator' for a more convenient constructor.
data GlobalAcceleratorAccelerator =
  GlobalAcceleratorAccelerator
  { _globalAcceleratorAcceleratorEnabled :: Maybe (Val Bool)
  , _globalAcceleratorAcceleratorIpAddressType :: Maybe (Val Text)
  , _globalAcceleratorAcceleratorIpAddresses :: Maybe (ValList Text)
  , _globalAcceleratorAcceleratorName :: Val Text
  , _globalAcceleratorAcceleratorTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties GlobalAcceleratorAccelerator where
  toResourceProperties GlobalAcceleratorAccelerator{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::GlobalAccelerator::Accelerator"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Enabled",) . toJSON) _globalAcceleratorAcceleratorEnabled
        , fmap (("IpAddressType",) . toJSON) _globalAcceleratorAcceleratorIpAddressType
        , fmap (("IpAddresses",) . toJSON) _globalAcceleratorAcceleratorIpAddresses
        , (Just . ("Name",) . toJSON) _globalAcceleratorAcceleratorName
        , fmap (("Tags",) . toJSON) _globalAcceleratorAcceleratorTags
        ]
    }

-- | Constructor for 'GlobalAcceleratorAccelerator' containing required fields
-- as arguments.
globalAcceleratorAccelerator
  :: Val Text -- ^ 'gaaName'
  -> GlobalAcceleratorAccelerator
globalAcceleratorAccelerator namearg =
  GlobalAcceleratorAccelerator
  { _globalAcceleratorAcceleratorEnabled = Nothing
  , _globalAcceleratorAcceleratorIpAddressType = Nothing
  , _globalAcceleratorAcceleratorIpAddresses = Nothing
  , _globalAcceleratorAcceleratorName = namearg
  , _globalAcceleratorAcceleratorTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-accelerator.html#cfn-globalaccelerator-accelerator-enabled
gaaEnabled :: Lens' GlobalAcceleratorAccelerator (Maybe (Val Bool))
gaaEnabled = lens _globalAcceleratorAcceleratorEnabled (\s a -> s { _globalAcceleratorAcceleratorEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-accelerator.html#cfn-globalaccelerator-accelerator-ipaddresstype
gaaIpAddressType :: Lens' GlobalAcceleratorAccelerator (Maybe (Val Text))
gaaIpAddressType = lens _globalAcceleratorAcceleratorIpAddressType (\s a -> s { _globalAcceleratorAcceleratorIpAddressType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-accelerator.html#cfn-globalaccelerator-accelerator-ipaddresses
gaaIpAddresses :: Lens' GlobalAcceleratorAccelerator (Maybe (ValList Text))
gaaIpAddresses = lens _globalAcceleratorAcceleratorIpAddresses (\s a -> s { _globalAcceleratorAcceleratorIpAddresses = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-accelerator.html#cfn-globalaccelerator-accelerator-name
gaaName :: Lens' GlobalAcceleratorAccelerator (Val Text)
gaaName = lens _globalAcceleratorAcceleratorName (\s a -> s { _globalAcceleratorAcceleratorName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-accelerator.html#cfn-globalaccelerator-accelerator-tags
gaaTags :: Lens' GlobalAcceleratorAccelerator (Maybe [Tag])
gaaTags = lens _globalAcceleratorAcceleratorTags (\s a -> s { _globalAcceleratorAcceleratorTags = a })
