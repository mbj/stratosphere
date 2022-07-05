{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-endpointgroup.html

module Stratosphere.Resources.GlobalAcceleratorEndpointGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlobalAcceleratorEndpointGroupEndpointConfiguration

-- | Full data type definition for GlobalAcceleratorEndpointGroup. See
-- 'globalAcceleratorEndpointGroup' for a more convenient constructor.
data GlobalAcceleratorEndpointGroup =
  GlobalAcceleratorEndpointGroup
  { _globalAcceleratorEndpointGroupEndpointConfigurations :: Maybe [GlobalAcceleratorEndpointGroupEndpointConfiguration]
  , _globalAcceleratorEndpointGroupEndpointGroupRegion :: Val Text
  , _globalAcceleratorEndpointGroupHealthCheckIntervalSeconds :: Maybe (Val Integer)
  , _globalAcceleratorEndpointGroupHealthCheckPath :: Maybe (Val Text)
  , _globalAcceleratorEndpointGroupHealthCheckPort :: Maybe (Val Integer)
  , _globalAcceleratorEndpointGroupHealthCheckProtocol :: Maybe (Val Text)
  , _globalAcceleratorEndpointGroupListenerArn :: Val Text
  , _globalAcceleratorEndpointGroupThresholdCount :: Maybe (Val Integer)
  , _globalAcceleratorEndpointGroupTrafficDialPercentage :: Maybe (Val Double)
  } deriving (Show, Eq)

instance ToResourceProperties GlobalAcceleratorEndpointGroup where
  toResourceProperties GlobalAcceleratorEndpointGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::GlobalAccelerator::EndpointGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("EndpointConfigurations",) . toJSON) _globalAcceleratorEndpointGroupEndpointConfigurations
        , (Just . ("EndpointGroupRegion",) . toJSON) _globalAcceleratorEndpointGroupEndpointGroupRegion
        , fmap (("HealthCheckIntervalSeconds",) . toJSON) _globalAcceleratorEndpointGroupHealthCheckIntervalSeconds
        , fmap (("HealthCheckPath",) . toJSON) _globalAcceleratorEndpointGroupHealthCheckPath
        , fmap (("HealthCheckPort",) . toJSON) _globalAcceleratorEndpointGroupHealthCheckPort
        , fmap (("HealthCheckProtocol",) . toJSON) _globalAcceleratorEndpointGroupHealthCheckProtocol
        , (Just . ("ListenerArn",) . toJSON) _globalAcceleratorEndpointGroupListenerArn
        , fmap (("ThresholdCount",) . toJSON) _globalAcceleratorEndpointGroupThresholdCount
        , fmap (("TrafficDialPercentage",) . toJSON) _globalAcceleratorEndpointGroupTrafficDialPercentage
        ]
    }

-- | Constructor for 'GlobalAcceleratorEndpointGroup' containing required
-- fields as arguments.
globalAcceleratorEndpointGroup
  :: Val Text -- ^ 'gaegEndpointGroupRegion'
  -> Val Text -- ^ 'gaegListenerArn'
  -> GlobalAcceleratorEndpointGroup
globalAcceleratorEndpointGroup endpointGroupRegionarg listenerArnarg =
  GlobalAcceleratorEndpointGroup
  { _globalAcceleratorEndpointGroupEndpointConfigurations = Nothing
  , _globalAcceleratorEndpointGroupEndpointGroupRegion = endpointGroupRegionarg
  , _globalAcceleratorEndpointGroupHealthCheckIntervalSeconds = Nothing
  , _globalAcceleratorEndpointGroupHealthCheckPath = Nothing
  , _globalAcceleratorEndpointGroupHealthCheckPort = Nothing
  , _globalAcceleratorEndpointGroupHealthCheckProtocol = Nothing
  , _globalAcceleratorEndpointGroupListenerArn = listenerArnarg
  , _globalAcceleratorEndpointGroupThresholdCount = Nothing
  , _globalAcceleratorEndpointGroupTrafficDialPercentage = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-endpointgroup.html#cfn-globalaccelerator-endpointgroup-endpointconfigurations
gaegEndpointConfigurations :: Lens' GlobalAcceleratorEndpointGroup (Maybe [GlobalAcceleratorEndpointGroupEndpointConfiguration])
gaegEndpointConfigurations = lens _globalAcceleratorEndpointGroupEndpointConfigurations (\s a -> s { _globalAcceleratorEndpointGroupEndpointConfigurations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-endpointgroup.html#cfn-globalaccelerator-endpointgroup-endpointgroupregion
gaegEndpointGroupRegion :: Lens' GlobalAcceleratorEndpointGroup (Val Text)
gaegEndpointGroupRegion = lens _globalAcceleratorEndpointGroupEndpointGroupRegion (\s a -> s { _globalAcceleratorEndpointGroupEndpointGroupRegion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-endpointgroup.html#cfn-globalaccelerator-endpointgroup-healthcheckintervalseconds
gaegHealthCheckIntervalSeconds :: Lens' GlobalAcceleratorEndpointGroup (Maybe (Val Integer))
gaegHealthCheckIntervalSeconds = lens _globalAcceleratorEndpointGroupHealthCheckIntervalSeconds (\s a -> s { _globalAcceleratorEndpointGroupHealthCheckIntervalSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-endpointgroup.html#cfn-globalaccelerator-endpointgroup-healthcheckpath
gaegHealthCheckPath :: Lens' GlobalAcceleratorEndpointGroup (Maybe (Val Text))
gaegHealthCheckPath = lens _globalAcceleratorEndpointGroupHealthCheckPath (\s a -> s { _globalAcceleratorEndpointGroupHealthCheckPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-endpointgroup.html#cfn-globalaccelerator-endpointgroup-healthcheckport
gaegHealthCheckPort :: Lens' GlobalAcceleratorEndpointGroup (Maybe (Val Integer))
gaegHealthCheckPort = lens _globalAcceleratorEndpointGroupHealthCheckPort (\s a -> s { _globalAcceleratorEndpointGroupHealthCheckPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-endpointgroup.html#cfn-globalaccelerator-endpointgroup-healthcheckprotocol
gaegHealthCheckProtocol :: Lens' GlobalAcceleratorEndpointGroup (Maybe (Val Text))
gaegHealthCheckProtocol = lens _globalAcceleratorEndpointGroupHealthCheckProtocol (\s a -> s { _globalAcceleratorEndpointGroupHealthCheckProtocol = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-endpointgroup.html#cfn-globalaccelerator-endpointgroup-listenerarn
gaegListenerArn :: Lens' GlobalAcceleratorEndpointGroup (Val Text)
gaegListenerArn = lens _globalAcceleratorEndpointGroupListenerArn (\s a -> s { _globalAcceleratorEndpointGroupListenerArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-endpointgroup.html#cfn-globalaccelerator-endpointgroup-thresholdcount
gaegThresholdCount :: Lens' GlobalAcceleratorEndpointGroup (Maybe (Val Integer))
gaegThresholdCount = lens _globalAcceleratorEndpointGroupThresholdCount (\s a -> s { _globalAcceleratorEndpointGroupThresholdCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-endpointgroup.html#cfn-globalaccelerator-endpointgroup-trafficdialpercentage
gaegTrafficDialPercentage :: Lens' GlobalAcceleratorEndpointGroup (Maybe (Val Double))
gaegTrafficDialPercentage = lens _globalAcceleratorEndpointGroupTrafficDialPercentage (\s a -> s { _globalAcceleratorEndpointGroupTrafficDialPercentage = a })
