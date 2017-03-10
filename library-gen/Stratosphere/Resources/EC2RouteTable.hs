{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route-table.html

module Stratosphere.Resources.EC2RouteTable where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2RouteTable. See 'ec2RouteTable' for a
-- more convenient constructor.
data EC2RouteTable =
  EC2RouteTable
  { _eC2RouteTableTags :: Maybe [Tag]
  , _eC2RouteTableVpcId :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2RouteTable where
  toJSON EC2RouteTable{..} =
    object $
    catMaybes
    [ ("Tags" .=) <$> _eC2RouteTableTags
    , Just ("VpcId" .= _eC2RouteTableVpcId)
    ]

instance FromJSON EC2RouteTable where
  parseJSON (Object obj) =
    EC2RouteTable <$>
      obj .:? "Tags" <*>
      obj .: "VpcId"
  parseJSON _ = mempty

-- | Constructor for 'EC2RouteTable' containing required fields as arguments.
ec2RouteTable
  :: Val Text -- ^ 'ecrtVpcId'
  -> EC2RouteTable
ec2RouteTable vpcIdarg =
  EC2RouteTable
  { _eC2RouteTableTags = Nothing
  , _eC2RouteTableVpcId = vpcIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route-table.html#cfn-ec2-routetable-tags
ecrtTags :: Lens' EC2RouteTable (Maybe [Tag])
ecrtTags = lens _eC2RouteTableTags (\s a -> s { _eC2RouteTableTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route-table.html#cfn-ec2-routetable-vpcid
ecrtVpcId :: Lens' EC2RouteTable (Val Text)
ecrtVpcId = lens _eC2RouteTableVpcId (\s a -> s { _eC2RouteTableVpcId = a })
