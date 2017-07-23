{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-internetgateway.html

module Stratosphere.Resources.EC2InternetGateway where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2InternetGateway. See
-- 'ec2InternetGateway' for a more convenient constructor.
data EC2InternetGateway =
  EC2InternetGateway
  { _eC2InternetGatewayTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON EC2InternetGateway where
  toJSON EC2InternetGateway{..} =
    object $
    catMaybes
    [ fmap (("Tags",) . toJSON) _eC2InternetGatewayTags
    ]

instance FromJSON EC2InternetGateway where
  parseJSON (Object obj) =
    EC2InternetGateway <$>
      (obj .:? "Tags")
  parseJSON _ = mempty

-- | Constructor for 'EC2InternetGateway' containing required fields as
-- arguments.
ec2InternetGateway
  :: EC2InternetGateway
ec2InternetGateway  =
  EC2InternetGateway
  { _eC2InternetGatewayTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-internetgateway.html#cfn-ec2-internetgateway-tags
ecigTags :: Lens' EC2InternetGateway (Maybe [Tag])
ecigTags = lens _eC2InternetGatewayTags (\s a -> s { _eC2InternetGatewayTags = a })
