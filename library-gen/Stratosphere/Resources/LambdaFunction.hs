{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html

module Stratosphere.Resources.LambdaFunction where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.Types
import Stratosphere.ResourceProperties.LambdaFunctionCode
import Stratosphere.ResourceProperties.LambdaFunctionEnvironment
import Stratosphere.ResourceProperties.LambdaFunctionVpcConfig

-- | Full data type definition for LambdaFunction. See 'lambdaFunction' for a
-- | more convenient constructor.
data LambdaFunction =
  LambdaFunction
  { _lambdaFunctionCode :: LambdaFunctionCode
  , _lambdaFunctionDescription :: Maybe (Val Text)
  , _lambdaFunctionEnvironment :: Maybe LambdaFunctionEnvironment
  , _lambdaFunctionFunctionName :: Maybe (Val Text)
  , _lambdaFunctionHandler :: Val Text
  , _lambdaFunctionKmsKeyArn :: Maybe (Val Text)
  , _lambdaFunctionMemorySize :: Maybe (Val Integer')
  , _lambdaFunctionRole :: Val Text
  , _lambdaFunctionRuntime :: Val Runtime
  , _lambdaFunctionTimeout :: Maybe (Val Integer')
  , _lambdaFunctionVpcConfig :: Maybe LambdaFunctionVpcConfig
  } deriving (Show, Generic)

instance ToJSON LambdaFunction where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

instance FromJSON LambdaFunction where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

-- | Constructor for 'LambdaFunction' containing required fields as arguments.
lambdaFunction
  :: LambdaFunctionCode -- ^ 'lfCode'
  -> Val Text -- ^ 'lfHandler'
  -> Val Text -- ^ 'lfRole'
  -> Val Runtime -- ^ 'lfRuntime'
  -> LambdaFunction
lambdaFunction codearg handlerarg rolearg runtimearg =
  LambdaFunction
  { _lambdaFunctionCode = codearg
  , _lambdaFunctionDescription = Nothing
  , _lambdaFunctionEnvironment = Nothing
  , _lambdaFunctionFunctionName = Nothing
  , _lambdaFunctionHandler = handlerarg
  , _lambdaFunctionKmsKeyArn = Nothing
  , _lambdaFunctionMemorySize = Nothing
  , _lambdaFunctionRole = rolearg
  , _lambdaFunctionRuntime = runtimearg
  , _lambdaFunctionTimeout = Nothing
  , _lambdaFunctionVpcConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-code
lfCode :: Lens' LambdaFunction LambdaFunctionCode
lfCode = lens _lambdaFunctionCode (\s a -> s { _lambdaFunctionCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-description
lfDescription :: Lens' LambdaFunction (Maybe (Val Text))
lfDescription = lens _lambdaFunctionDescription (\s a -> s { _lambdaFunctionDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-environment
lfEnvironment :: Lens' LambdaFunction (Maybe LambdaFunctionEnvironment)
lfEnvironment = lens _lambdaFunctionEnvironment (\s a -> s { _lambdaFunctionEnvironment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-functionname
lfFunctionName :: Lens' LambdaFunction (Maybe (Val Text))
lfFunctionName = lens _lambdaFunctionFunctionName (\s a -> s { _lambdaFunctionFunctionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-handler
lfHandler :: Lens' LambdaFunction (Val Text)
lfHandler = lens _lambdaFunctionHandler (\s a -> s { _lambdaFunctionHandler = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-kmskeyarn
lfKmsKeyArn :: Lens' LambdaFunction (Maybe (Val Text))
lfKmsKeyArn = lens _lambdaFunctionKmsKeyArn (\s a -> s { _lambdaFunctionKmsKeyArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-memorysize
lfMemorySize :: Lens' LambdaFunction (Maybe (Val Integer'))
lfMemorySize = lens _lambdaFunctionMemorySize (\s a -> s { _lambdaFunctionMemorySize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-role
lfRole :: Lens' LambdaFunction (Val Text)
lfRole = lens _lambdaFunctionRole (\s a -> s { _lambdaFunctionRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-runtime
lfRuntime :: Lens' LambdaFunction (Val Runtime)
lfRuntime = lens _lambdaFunctionRuntime (\s a -> s { _lambdaFunctionRuntime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-timeout
lfTimeout :: Lens' LambdaFunction (Maybe (Val Integer'))
lfTimeout = lens _lambdaFunctionTimeout (\s a -> s { _lambdaFunctionTimeout = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-vpcconfig
lfVpcConfig :: Lens' LambdaFunction (Maybe LambdaFunctionVpcConfig)
lfVpcConfig = lens _lambdaFunctionVpcConfig (\s a -> s { _lambdaFunctionVpcConfig = a })
