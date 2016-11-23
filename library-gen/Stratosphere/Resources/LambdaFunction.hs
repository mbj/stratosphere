{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::Lambda::Function resource creates an AWS Lambda (Lambda)
-- function that can run code in response to events. For more information, see
-- CreateFunction in the AWS Lambda Developer Guide.

module Stratosphere.Resources.LambdaFunction where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.LambdaFunctionCode
import Stratosphere.ResourceProperties.LambdaFunctionVPCConfig
import Stratosphere.Types

-- | Full data type definition for LambdaFunction. See 'lambdaFunction' for a
-- more convenient constructor.
data LambdaFunction =
  LambdaFunction
  { _lambdaFunctionCode :: LambdaFunctionCode
  , _lambdaFunctionDescription :: Maybe (Val Text)
  , _lambdaFunctionFunctionName :: Maybe (Val Text)
  , _lambdaFunctionHandler :: Val Text
  , _lambdaFunctionMemorySize :: Maybe (Val Integer')
  , _lambdaFunctionRole :: Val Text
  , _lambdaFunctionRuntime :: Runtime
  , _lambdaFunctionTimeout :: Maybe (Val Integer')
  , _lambdaFunctionVpcConfig :: Maybe LambdaFunctionVPCConfig
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
  -> Runtime -- ^ 'lfRuntime'
  -> LambdaFunction
lambdaFunction codearg handlerarg rolearg runtimearg =
  LambdaFunction
  { _lambdaFunctionCode = codearg
  , _lambdaFunctionDescription = Nothing
  , _lambdaFunctionFunctionName = Nothing
  , _lambdaFunctionHandler = handlerarg
  , _lambdaFunctionMemorySize = Nothing
  , _lambdaFunctionRole = rolearg
  , _lambdaFunctionRuntime = runtimearg
  , _lambdaFunctionTimeout = Nothing
  , _lambdaFunctionVpcConfig = Nothing
  }

-- | The source code of your Lambda function. You can point to a file in an
-- Amazon Simple Storage Service (Amazon S3) bucket or specify your source
-- code as inline text.
lfCode :: Lens' LambdaFunction LambdaFunctionCode
lfCode = lens _lambdaFunctionCode (\s a -> s { _lambdaFunctionCode = a })

-- | A description of the function.
lfDescription :: Lens' LambdaFunction (Maybe (Val Text))
lfDescription = lens _lambdaFunctionDescription (\s a -> s { _lambdaFunctionDescription = a })

-- | A name for the function. If you don't specify a name, AWS CloudFormation
-- generates a unique physical ID and uses that ID for the function's name.
-- For more information, see Name Type. Important If you specify a name, you
-- cannot do updates that require this resource to be replaced. You can still
-- do updates that require no or some interruption. If you must replace the
-- resource, specify a new name.
lfFunctionName :: Lens' LambdaFunction (Maybe (Val Text))
lfFunctionName = lens _lambdaFunctionFunctionName (\s a -> s { _lambdaFunctionFunctionName = a })

-- | The name of the function (within your source code) that Lambda calls to
-- start running your code. For more information, see the Handler property in
-- the AWS Lambda Developer Guide. Note If you specify your source code as
-- inline text by specifying the ZipFile property within the Code property,
-- specify index.function_name as the handler.
lfHandler :: Lens' LambdaFunction (Val Text)
lfHandler = lens _lambdaFunctionHandler (\s a -> s { _lambdaFunctionHandler = a })

-- | The amount of memory, in MB, that is allocated to your Lambda function.
-- Lambda uses this value to proportionally allocate the amount of CPU power.
-- For more information, see Resource Model in the AWS Lambda Developer Guide.
-- Your function use case determines your CPU and memory requirements. For
-- example, a database operation might need less memory than an image
-- processing function. You must specify a value that is greater than or equal
-- to 128, and it must be a multiple of 64. You cannot specify a size larger
-- than 1536. The default value is 128 MB.
lfMemorySize :: Lens' LambdaFunction (Maybe (Val Integer'))
lfMemorySize = lens _lambdaFunctionMemorySize (\s a -> s { _lambdaFunctionMemorySize = a })

-- | The Amazon Resource Name (ARN) of the AWS Identity and Access Management
-- (IAM) execution role that Lambda assumes when it runs your code to access
-- AWS services.
lfRole :: Lens' LambdaFunction (Val Text)
lfRole = lens _lambdaFunctionRole (\s a -> s { _lambdaFunctionRole = a })

-- | The runtime environment for the Lambda function that you are uploading.
-- For valid values, see the Runtime property in the AWS Lambda Developer
-- Guide.
lfRuntime :: Lens' LambdaFunction Runtime
lfRuntime = lens _lambdaFunctionRuntime (\s a -> s { _lambdaFunctionRuntime = a })

-- | The function execution time (in seconds) after which Lambda terminates
-- the function. Because the execution time affects cost, set this value based
-- on the function's expected execution time. By default, Timeout is set to 3
-- seconds.
lfTimeout :: Lens' LambdaFunction (Maybe (Val Integer'))
lfTimeout = lens _lambdaFunctionTimeout (\s a -> s { _lambdaFunctionTimeout = a })

-- | If the Lambda function requires access to resources in a VPC, specify a
-- VPC configuration that Lambda uses to set up an elastic network interface
-- (ENI). The ENI enables your function to connect to other resources in your
-- VPC, but it doesn't provide public Internet access. If your function
-- requires Internet access (for example, to access AWS services that don't
-- have VPC endpoints), configure a Network Address Translation (NAT) instance
-- inside your VPC or use an Amazon Virtual Private Cloud (Amazon VPC) NAT
-- gateway. For more information, see NAT Gateways in the Amazon VPC User
-- Guide.
lfVpcConfig :: Lens' LambdaFunction (Maybe LambdaFunctionVPCConfig)
lfVpcConfig = lens _lambdaFunctionVpcConfig (\s a -> s { _lambdaFunctionVpcConfig = a })