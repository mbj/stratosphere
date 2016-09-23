{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | VpcConfig is a property of the AWS::Lambda::Function resource that
-- enables to your AWS Lambda (Lambda) function to access resources in a VPC.
-- For more information, see Configuring a Lambda Function to Access Resources
-- in an Amazon VPC in the AWS Lambda Developer Guide.

module Stratosphere.ResourceProperties.LambdaFunctionVPCConfig where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for LambdaFunctionVPCConfig. See
-- 'lambdaFunctionVPCConfig' for a more convenient constructor.
data LambdaFunctionVPCConfig =
  LambdaFunctionVPCConfig
  { _lambdaFunctionVPCConfigSecurityGroupIds :: [Val Text]
  , _lambdaFunctionVPCConfigSubnetIds :: [Val Text]
  } deriving (Show, Generic)

instance ToJSON LambdaFunctionVPCConfig where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

instance FromJSON LambdaFunctionVPCConfig where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

-- | Constructor for 'LambdaFunctionVPCConfig' containing required fields as
-- arguments.
lambdaFunctionVPCConfig
  :: [Val Text] -- ^ 'lfvpccSecurityGroupIds'
  -> [Val Text] -- ^ 'lfvpccSubnetIds'
  -> LambdaFunctionVPCConfig
lambdaFunctionVPCConfig securityGroupIdsarg subnetIdsarg =
  LambdaFunctionVPCConfig
  { _lambdaFunctionVPCConfigSecurityGroupIds = securityGroupIdsarg
  , _lambdaFunctionVPCConfigSubnetIds = subnetIdsarg
  }

-- | A list of one or more security groups IDs in the VPC that includes the
-- resources to which your Lambda function requires access.
lfvpccSecurityGroupIds :: Lens' LambdaFunctionVPCConfig [Val Text]
lfvpccSecurityGroupIds = lens _lambdaFunctionVPCConfigSecurityGroupIds (\s a -> s { _lambdaFunctionVPCConfigSecurityGroupIds = a })

-- | A list of one or more subnet IDs in the VPC that includes the resources
-- to which your Lambda function requires access.
lfvpccSubnetIds :: Lens' LambdaFunctionVPCConfig [Val Text]
lfvpccSubnetIds = lens _lambdaFunctionVPCConfigSubnetIds (\s a -> s { _lambdaFunctionVPCConfigSubnetIds = a })