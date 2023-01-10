
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-globalaccelerator-endpointgroup-endpointconfiguration.html

module Stratosphere.ResourceProperties.GlobalAcceleratorEndpointGroupEndpointConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- GlobalAcceleratorEndpointGroupEndpointConfiguration. See
-- 'globalAcceleratorEndpointGroupEndpointConfiguration' for a more
-- convenient constructor.
data GlobalAcceleratorEndpointGroupEndpointConfiguration =
  GlobalAcceleratorEndpointGroupEndpointConfiguration
  { _globalAcceleratorEndpointGroupEndpointConfigurationClientIPPreservationEnabled :: Maybe (Val Bool)
  , _globalAcceleratorEndpointGroupEndpointConfigurationEndpointId :: Val Text
  , _globalAcceleratorEndpointGroupEndpointConfigurationWeight :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON GlobalAcceleratorEndpointGroupEndpointConfiguration where
  toJSON GlobalAcceleratorEndpointGroupEndpointConfiguration{..} =
    object $
    catMaybes
    [ fmap (("ClientIPPreservationEnabled",) . toJSON) _globalAcceleratorEndpointGroupEndpointConfigurationClientIPPreservationEnabled
    , (Just . ("EndpointId",) . toJSON) _globalAcceleratorEndpointGroupEndpointConfigurationEndpointId
    , fmap (("Weight",) . toJSON) _globalAcceleratorEndpointGroupEndpointConfigurationWeight
    ]

-- | Constructor for 'GlobalAcceleratorEndpointGroupEndpointConfiguration'
-- containing required fields as arguments.
globalAcceleratorEndpointGroupEndpointConfiguration
  :: Val Text -- ^ 'gaegecEndpointId'
  -> GlobalAcceleratorEndpointGroupEndpointConfiguration
globalAcceleratorEndpointGroupEndpointConfiguration endpointIdarg =
  GlobalAcceleratorEndpointGroupEndpointConfiguration
  { _globalAcceleratorEndpointGroupEndpointConfigurationClientIPPreservationEnabled = Nothing
  , _globalAcceleratorEndpointGroupEndpointConfigurationEndpointId = endpointIdarg
  , _globalAcceleratorEndpointGroupEndpointConfigurationWeight = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-globalaccelerator-endpointgroup-endpointconfiguration.html#cfn-globalaccelerator-endpointgroup-endpointconfiguration-clientippreservationenabled
gaegecClientIPPreservationEnabled :: Lens' GlobalAcceleratorEndpointGroupEndpointConfiguration (Maybe (Val Bool))
gaegecClientIPPreservationEnabled = lens _globalAcceleratorEndpointGroupEndpointConfigurationClientIPPreservationEnabled (\s a -> s { _globalAcceleratorEndpointGroupEndpointConfigurationClientIPPreservationEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-globalaccelerator-endpointgroup-endpointconfiguration.html#cfn-globalaccelerator-endpointgroup-endpointconfiguration-endpointid
gaegecEndpointId :: Lens' GlobalAcceleratorEndpointGroupEndpointConfiguration (Val Text)
gaegecEndpointId = lens _globalAcceleratorEndpointGroupEndpointConfigurationEndpointId (\s a -> s { _globalAcceleratorEndpointGroupEndpointConfigurationEndpointId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-globalaccelerator-endpointgroup-endpointconfiguration.html#cfn-globalaccelerator-endpointgroup-endpointconfiguration-weight
gaegecWeight :: Lens' GlobalAcceleratorEndpointGroupEndpointConfiguration (Maybe (Val Integer))
gaegecWeight = lens _globalAcceleratorEndpointGroupEndpointConfigurationWeight (\s a -> s { _globalAcceleratorEndpointGroupEndpointConfigurationWeight = a })
