{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-elasticip.html

module Stratosphere.ResourceProperties.OpsWorksStackElasticIp where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for OpsWorksStackElasticIp. See
-- | 'opsWorksStackElasticIp' for a more convenient constructor.
data OpsWorksStackElasticIp =
  OpsWorksStackElasticIp
  { _opsWorksStackElasticIpIp :: Val Text
  , _opsWorksStackElasticIpName :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON OpsWorksStackElasticIp where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

instance FromJSON OpsWorksStackElasticIp where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

-- | Constructor for 'OpsWorksStackElasticIp' containing required fields as
-- | arguments.
opsWorksStackElasticIp
  :: Val Text -- ^ 'owseiIp'
  -> OpsWorksStackElasticIp
opsWorksStackElasticIp iparg =
  OpsWorksStackElasticIp
  { _opsWorksStackElasticIpIp = iparg
  , _opsWorksStackElasticIpName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-elasticip.html#cfn-opsworks-stack-elasticip-ip
owseiIp :: Lens' OpsWorksStackElasticIp (Val Text)
owseiIp = lens _opsWorksStackElasticIpIp (\s a -> s { _opsWorksStackElasticIpIp = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-stack-elasticip.html#cfn-opsworks-stack-elasticip-name
owseiName :: Lens' OpsWorksStackElasticIp (Maybe (Val Text))
owseiName = lens _opsWorksStackElasticIpName (\s a -> s { _opsWorksStackElasticIpName = a })
