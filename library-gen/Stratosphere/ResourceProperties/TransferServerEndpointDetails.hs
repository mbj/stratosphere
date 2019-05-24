{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html

module Stratosphere.ResourceProperties.TransferServerEndpointDetails where

import Stratosphere.ResourceImports


-- | Full data type definition for TransferServerEndpointDetails. See
-- 'transferServerEndpointDetails' for a more convenient constructor.
data TransferServerEndpointDetails =
  TransferServerEndpointDetails
  { _transferServerEndpointDetailsVpcEndpointId :: Val Text
  } deriving (Show, Eq)

instance ToJSON TransferServerEndpointDetails where
  toJSON TransferServerEndpointDetails{..} =
    object $
    catMaybes
    [ (Just . ("VpcEndpointId",) . toJSON) _transferServerEndpointDetailsVpcEndpointId
    ]

-- | Constructor for 'TransferServerEndpointDetails' containing required
-- fields as arguments.
transferServerEndpointDetails
  :: Val Text -- ^ 'tsedVpcEndpointId'
  -> TransferServerEndpointDetails
transferServerEndpointDetails vpcEndpointIdarg =
  TransferServerEndpointDetails
  { _transferServerEndpointDetailsVpcEndpointId = vpcEndpointIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-endpointdetails.html#cfn-transfer-server-endpointdetails-vpcendpointid
tsedVpcEndpointId :: Lens' TransferServerEndpointDetails (Val Text)
tsedVpcEndpointId = lens _transferServerEndpointDetailsVpcEndpointId (\s a -> s { _transferServerEndpointDetailsVpcEndpointId = a })
