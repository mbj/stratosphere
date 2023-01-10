
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-globalaccelerator-listener-portrange.html

module Stratosphere.ResourceProperties.GlobalAcceleratorListenerPortRange where

import Stratosphere.ResourceImports


-- | Full data type definition for GlobalAcceleratorListenerPortRange. See
-- 'globalAcceleratorListenerPortRange' for a more convenient constructor.
data GlobalAcceleratorListenerPortRange =
  GlobalAcceleratorListenerPortRange
  { _globalAcceleratorListenerPortRangeFromPort :: Val Integer
  , _globalAcceleratorListenerPortRangeToPort :: Val Integer
  } deriving (Show, Eq)

instance ToJSON GlobalAcceleratorListenerPortRange where
  toJSON GlobalAcceleratorListenerPortRange{..} =
    object $
    catMaybes
    [ (Just . ("FromPort",) . toJSON) _globalAcceleratorListenerPortRangeFromPort
    , (Just . ("ToPort",) . toJSON) _globalAcceleratorListenerPortRangeToPort
    ]

-- | Constructor for 'GlobalAcceleratorListenerPortRange' containing required
-- fields as arguments.
globalAcceleratorListenerPortRange
  :: Val Integer -- ^ 'galprFromPort'
  -> Val Integer -- ^ 'galprToPort'
  -> GlobalAcceleratorListenerPortRange
globalAcceleratorListenerPortRange fromPortarg toPortarg =
  GlobalAcceleratorListenerPortRange
  { _globalAcceleratorListenerPortRangeFromPort = fromPortarg
  , _globalAcceleratorListenerPortRangeToPort = toPortarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-globalaccelerator-listener-portrange.html#cfn-globalaccelerator-listener-portrange-fromport
galprFromPort :: Lens' GlobalAcceleratorListenerPortRange (Val Integer)
galprFromPort = lens _globalAcceleratorListenerPortRangeFromPort (\s a -> s { _globalAcceleratorListenerPortRangeFromPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-globalaccelerator-listener-portrange.html#cfn-globalaccelerator-listener-portrange-toport
galprToPort :: Lens' GlobalAcceleratorListenerPortRange (Val Integer)
galprToPort = lens _globalAcceleratorListenerPortRangeToPort (\s a -> s { _globalAcceleratorListenerPortRangeToPort = a })
