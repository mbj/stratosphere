{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html

module Stratosphere.ResourceProperties.LambdaFunctionVpcConfig where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for LambdaFunctionVpcConfig. See
-- | 'lambdaFunctionVpcConfig' for a more convenient constructor.
data LambdaFunctionVpcConfig =
  LambdaFunctionVpcConfig
  { _lambdaFunctionVpcConfigSecurityGroupIds :: [Val Text]
  , _lambdaFunctionVpcConfigSubnetIds :: [Val Text]
  } deriving (Show, Eq, Generic)

instance ToJSON LambdaFunctionVpcConfig where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

instance FromJSON LambdaFunctionVpcConfig where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

-- | Constructor for 'LambdaFunctionVpcConfig' containing required fields as
-- | arguments.
lambdaFunctionVpcConfig
  :: [Val Text] -- ^ 'lfvcSecurityGroupIds'
  -> [Val Text] -- ^ 'lfvcSubnetIds'
  -> LambdaFunctionVpcConfig
lambdaFunctionVpcConfig securityGroupIdsarg subnetIdsarg =
  LambdaFunctionVpcConfig
  { _lambdaFunctionVpcConfigSecurityGroupIds = securityGroupIdsarg
  , _lambdaFunctionVpcConfigSubnetIds = subnetIdsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html#cfn-lambda-function-vpcconfig-securitygroupids
lfvcSecurityGroupIds :: Lens' LambdaFunctionVpcConfig [Val Text]
lfvcSecurityGroupIds = lens _lambdaFunctionVpcConfigSecurityGroupIds (\s a -> s { _lambdaFunctionVpcConfigSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html#cfn-lambda-function-vpcconfig-subnetids
lfvcSubnetIds :: Lens' LambdaFunctionVpcConfig [Val Text]
lfvcSubnetIds = lens _lambdaFunctionVpcConfigSubnetIds (\s a -> s { _lambdaFunctionVpcConfigSubnetIds = a })
