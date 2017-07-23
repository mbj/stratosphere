{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-egressonlyinternetgateway.html

module Stratosphere.Resources.EC2EgressOnlyInternetGateway where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EC2EgressOnlyInternetGateway. See
-- 'ec2EgressOnlyInternetGateway' for a more convenient constructor.
data EC2EgressOnlyInternetGateway =
  EC2EgressOnlyInternetGateway
  { _eC2EgressOnlyInternetGatewayVpcId :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2EgressOnlyInternetGateway where
  toJSON EC2EgressOnlyInternetGateway{..} =
    object $
    catMaybes
    [ (Just . ("VpcId",) . toJSON) _eC2EgressOnlyInternetGatewayVpcId
    ]

instance FromJSON EC2EgressOnlyInternetGateway where
  parseJSON (Object obj) =
    EC2EgressOnlyInternetGateway <$>
      (obj .: "VpcId")
  parseJSON _ = mempty

-- | Constructor for 'EC2EgressOnlyInternetGateway' containing required fields
-- as arguments.
ec2EgressOnlyInternetGateway
  :: Val Text -- ^ 'eceoigVpcId'
  -> EC2EgressOnlyInternetGateway
ec2EgressOnlyInternetGateway vpcIdarg =
  EC2EgressOnlyInternetGateway
  { _eC2EgressOnlyInternetGatewayVpcId = vpcIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-egressonlyinternetgateway.html#cfn-ec2-egressonlyinternetgateway-vpcid
eceoigVpcId :: Lens' EC2EgressOnlyInternetGateway (Val Text)
eceoigVpcId = lens _eC2EgressOnlyInternetGatewayVpcId (\s a -> s { _eC2EgressOnlyInternetGatewayVpcId = a })
