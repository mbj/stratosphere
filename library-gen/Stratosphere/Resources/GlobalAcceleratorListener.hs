{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-listener.html

module Stratosphere.Resources.GlobalAcceleratorListener where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlobalAcceleratorListenerPortRange

-- | Full data type definition for GlobalAcceleratorListener. See
-- 'globalAcceleratorListener' for a more convenient constructor.
data GlobalAcceleratorListener =
  GlobalAcceleratorListener
  { _globalAcceleratorListenerAcceleratorArn :: Val Text
  , _globalAcceleratorListenerClientAffinity :: Maybe (Val Text)
  , _globalAcceleratorListenerPortRanges :: [GlobalAcceleratorListenerPortRange]
  , _globalAcceleratorListenerProtocol :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties GlobalAcceleratorListener where
  toResourceProperties GlobalAcceleratorListener{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::GlobalAccelerator::Listener"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("AcceleratorArn",) . toJSON) _globalAcceleratorListenerAcceleratorArn
        , fmap (("ClientAffinity",) . toJSON) _globalAcceleratorListenerClientAffinity
        , (Just . ("PortRanges",) . toJSON) _globalAcceleratorListenerPortRanges
        , (Just . ("Protocol",) . toJSON) _globalAcceleratorListenerProtocol
        ]
    }

-- | Constructor for 'GlobalAcceleratorListener' containing required fields as
-- arguments.
globalAcceleratorListener
  :: Val Text -- ^ 'galAcceleratorArn'
  -> [GlobalAcceleratorListenerPortRange] -- ^ 'galPortRanges'
  -> Val Text -- ^ 'galProtocol'
  -> GlobalAcceleratorListener
globalAcceleratorListener acceleratorArnarg portRangesarg protocolarg =
  GlobalAcceleratorListener
  { _globalAcceleratorListenerAcceleratorArn = acceleratorArnarg
  , _globalAcceleratorListenerClientAffinity = Nothing
  , _globalAcceleratorListenerPortRanges = portRangesarg
  , _globalAcceleratorListenerProtocol = protocolarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-listener.html#cfn-globalaccelerator-listener-acceleratorarn
galAcceleratorArn :: Lens' GlobalAcceleratorListener (Val Text)
galAcceleratorArn = lens _globalAcceleratorListenerAcceleratorArn (\s a -> s { _globalAcceleratorListenerAcceleratorArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-listener.html#cfn-globalaccelerator-listener-clientaffinity
galClientAffinity :: Lens' GlobalAcceleratorListener (Maybe (Val Text))
galClientAffinity = lens _globalAcceleratorListenerClientAffinity (\s a -> s { _globalAcceleratorListenerClientAffinity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-listener.html#cfn-globalaccelerator-listener-portranges
galPortRanges :: Lens' GlobalAcceleratorListener [GlobalAcceleratorListenerPortRange]
galPortRanges = lens _globalAcceleratorListenerPortRanges (\s a -> s { _globalAcceleratorListenerPortRanges = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-globalaccelerator-listener.html#cfn-globalaccelerator-listener-protocol
galProtocol :: Lens' GlobalAcceleratorListener (Val Text)
galProtocol = lens _globalAcceleratorListenerProtocol (\s a -> s { _globalAcceleratorListenerProtocol = a })
