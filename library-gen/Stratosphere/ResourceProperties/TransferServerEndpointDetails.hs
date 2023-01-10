
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html

module Stratosphere.ResourceProperties.TransferServerEndpointDetails where

import Stratosphere.ResourceImports


-- | Full data type definition for TransferServerEndpointDetails. See
-- 'transferServerEndpointDetails' for a more convenient constructor.
data TransferServerEndpointDetails =
  TransferServerEndpointDetails
  { _transferServerEndpointDetailsAddressAllocationIds :: Maybe (ValList Text)
  , _transferServerEndpointDetailsSubnetIds :: Maybe (ValList Text)
  , _transferServerEndpointDetailsVpcEndpointId :: Maybe (Val Text)
  , _transferServerEndpointDetailsVpcId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON TransferServerEndpointDetails where
  toJSON TransferServerEndpointDetails{..} =
    object $
    catMaybes
    [ fmap (("AddressAllocationIds",) . toJSON) _transferServerEndpointDetailsAddressAllocationIds
    , fmap (("SubnetIds",) . toJSON) _transferServerEndpointDetailsSubnetIds
    , fmap (("VpcEndpointId",) . toJSON) _transferServerEndpointDetailsVpcEndpointId
    , fmap (("VpcId",) . toJSON) _transferServerEndpointDetailsVpcId
    ]

-- | Constructor for 'TransferServerEndpointDetails' containing required
-- fields as arguments.
transferServerEndpointDetails
  :: TransferServerEndpointDetails
transferServerEndpointDetails  =
  TransferServerEndpointDetails
  { _transferServerEndpointDetailsAddressAllocationIds = Nothing
  , _transferServerEndpointDetailsSubnetIds = Nothing
  , _transferServerEndpointDetailsVpcEndpointId = Nothing
  , _transferServerEndpointDetailsVpcId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html#cfn-transfer-server-endpointdetails-addressallocationids
tsedAddressAllocationIds :: Lens' TransferServerEndpointDetails (Maybe (ValList Text))
tsedAddressAllocationIds = lens _transferServerEndpointDetailsAddressAllocationIds (\s a -> s { _transferServerEndpointDetailsAddressAllocationIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html#cfn-transfer-server-endpointdetails-subnetids
tsedSubnetIds :: Lens' TransferServerEndpointDetails (Maybe (ValList Text))
tsedSubnetIds = lens _transferServerEndpointDetailsSubnetIds (\s a -> s { _transferServerEndpointDetailsSubnetIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html#cfn-transfer-server-endpointdetails-vpcendpointid
tsedVpcEndpointId :: Lens' TransferServerEndpointDetails (Maybe (Val Text))
tsedVpcEndpointId = lens _transferServerEndpointDetailsVpcEndpointId (\s a -> s { _transferServerEndpointDetailsVpcEndpointId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html#cfn-transfer-server-endpointdetails-vpcid
tsedVpcId :: Lens' TransferServerEndpointDetails (Maybe (Val Text))
tsedVpcId = lens _transferServerEndpointDetailsVpcId (\s a -> s { _transferServerEndpointDetailsVpcId = a })
