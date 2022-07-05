{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-instance.html

module Stratosphere.Resources.ServiceDiscoveryInstance where

import Stratosphere.ResourceImports


-- | Full data type definition for ServiceDiscoveryInstance. See
-- 'serviceDiscoveryInstance' for a more convenient constructor.
data ServiceDiscoveryInstance =
  ServiceDiscoveryInstance
  { _serviceDiscoveryInstanceInstanceAttributes :: Object
  , _serviceDiscoveryInstanceInstanceId :: Maybe (Val Text)
  , _serviceDiscoveryInstanceServiceId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ServiceDiscoveryInstance where
  toResourceProperties ServiceDiscoveryInstance{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ServiceDiscovery::Instance"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("InstanceAttributes",) . toJSON) _serviceDiscoveryInstanceInstanceAttributes
        , fmap (("InstanceId",) . toJSON) _serviceDiscoveryInstanceInstanceId
        , (Just . ("ServiceId",) . toJSON) _serviceDiscoveryInstanceServiceId
        ]
    }

-- | Constructor for 'ServiceDiscoveryInstance' containing required fields as
-- arguments.
serviceDiscoveryInstance
  :: Object -- ^ 'sdiInstanceAttributes'
  -> Val Text -- ^ 'sdiServiceId'
  -> ServiceDiscoveryInstance
serviceDiscoveryInstance instanceAttributesarg serviceIdarg =
  ServiceDiscoveryInstance
  { _serviceDiscoveryInstanceInstanceAttributes = instanceAttributesarg
  , _serviceDiscoveryInstanceInstanceId = Nothing
  , _serviceDiscoveryInstanceServiceId = serviceIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-instance.html#cfn-servicediscovery-instance-instanceattributes
sdiInstanceAttributes :: Lens' ServiceDiscoveryInstance Object
sdiInstanceAttributes = lens _serviceDiscoveryInstanceInstanceAttributes (\s a -> s { _serviceDiscoveryInstanceInstanceAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-instance.html#cfn-servicediscovery-instance-instanceid
sdiInstanceId :: Lens' ServiceDiscoveryInstance (Maybe (Val Text))
sdiInstanceId = lens _serviceDiscoveryInstanceInstanceId (\s a -> s { _serviceDiscoveryInstanceInstanceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-instance.html#cfn-servicediscovery-instance-serviceid
sdiServiceId :: Lens' ServiceDiscoveryInstance (Val Text)
sdiServiceId = lens _serviceDiscoveryInstanceServiceId (\s a -> s { _serviceDiscoveryInstanceServiceId = a })
