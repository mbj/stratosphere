{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html

module Stratosphere.Resources.LambdaFunction where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.Types
import Stratosphere.ResourceProperties.LambdaFunctionCode
import Stratosphere.ResourceProperties.LambdaFunctionDeadLetterConfig
import Stratosphere.ResourceProperties.LambdaFunctionEnvironment
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.LambdaFunctionVpcConfig

-- | Full data type definition for LambdaFunction. See 'lambdaFunction' for a
-- more convenient constructor.
data LambdaFunction =
  LambdaFunction
  { _lambdaFunctionCode :: LambdaFunctionCode
  , _lambdaFunctionDeadLetterConfig :: Maybe LambdaFunctionDeadLetterConfig
  , _lambdaFunctionDescription :: Maybe (Val Text)
  , _lambdaFunctionEnvironment :: Maybe LambdaFunctionEnvironment
  , _lambdaFunctionFunctionName :: Maybe (Val Text)
  , _lambdaFunctionHandler :: Val Text
  , _lambdaFunctionKmsKeyArn :: Maybe (Val Text)
  , _lambdaFunctionMemorySize :: Maybe (Val Integer')
  , _lambdaFunctionRole :: Val Text
  , _lambdaFunctionRuntime :: Val Runtime
  , _lambdaFunctionTags :: Maybe [Tag]
  , _lambdaFunctionTimeout :: Maybe (Val Integer')
  , _lambdaFunctionVpcConfig :: Maybe LambdaFunctionVpcConfig
  } deriving (Show, Eq)

instance ToJSON LambdaFunction where
  toJSON LambdaFunction{..} =
    object $
    catMaybes
    [ Just ("Code" .= _lambdaFunctionCode)
    , ("DeadLetterConfig" .=) <$> _lambdaFunctionDeadLetterConfig
    , ("Description" .=) <$> _lambdaFunctionDescription
    , ("Environment" .=) <$> _lambdaFunctionEnvironment
    , ("FunctionName" .=) <$> _lambdaFunctionFunctionName
    , Just ("Handler" .= _lambdaFunctionHandler)
    , ("KmsKeyArn" .=) <$> _lambdaFunctionKmsKeyArn
    , ("MemorySize" .=) <$> _lambdaFunctionMemorySize
    , Just ("Role" .= _lambdaFunctionRole)
    , Just ("Runtime" .= _lambdaFunctionRuntime)
    , ("Tags" .=) <$> _lambdaFunctionTags
    , ("Timeout" .=) <$> _lambdaFunctionTimeout
    , ("VpcConfig" .=) <$> _lambdaFunctionVpcConfig
    ]

instance FromJSON LambdaFunction where
  parseJSON (Object obj) =
    LambdaFunction <$>
      obj .: "Code" <*>
      obj .:? "DeadLetterConfig" <*>
      obj .:? "Description" <*>
      obj .:? "Environment" <*>
      obj .:? "FunctionName" <*>
      obj .: "Handler" <*>
      obj .:? "KmsKeyArn" <*>
      obj .:? "MemorySize" <*>
      obj .: "Role" <*>
      obj .: "Runtime" <*>
      obj .:? "Tags" <*>
      obj .:? "Timeout" <*>
      obj .:? "VpcConfig"
  parseJSON _ = mempty

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
  , _lambdaFunctionDeadLetterConfig = Nothing
  , _lambdaFunctionDescription = Nothing
  , _lambdaFunctionEnvironment = Nothing
  , _lambdaFunctionFunctionName = Nothing
  , _lambdaFunctionHandler = handlerarg
  , _lambdaFunctionKmsKeyArn = Nothing
  , _lambdaFunctionMemorySize = Nothing
  , _lambdaFunctionRole = rolearg
  , _lambdaFunctionRuntime = runtimearg
  , _lambdaFunctionTags = Nothing
  , _lambdaFunctionTimeout = Nothing
  , _lambdaFunctionVpcConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-code
lfCode :: Lens' LambdaFunction LambdaFunctionCode
lfCode = lens _lambdaFunctionCode (\s a -> s { _lambdaFunctionCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-deadletterconfig
lfDeadLetterConfig :: Lens' LambdaFunction (Maybe LambdaFunctionDeadLetterConfig)
lfDeadLetterConfig = lens _lambdaFunctionDeadLetterConfig (\s a -> s { _lambdaFunctionDeadLetterConfig = a })

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-tags
lfTags :: Lens' LambdaFunction (Maybe [Tag])
lfTags = lens _lambdaFunctionTags (\s a -> s { _lambdaFunctionTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-timeout
lfTimeout :: Lens' LambdaFunction (Maybe (Val Integer'))
lfTimeout = lens _lambdaFunctionTimeout (\s a -> s { _lambdaFunctionTimeout = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-vpcconfig
lfVpcConfig :: Lens' LambdaFunction (Maybe LambdaFunctionVpcConfig)
lfVpcConfig = lens _lambdaFunctionVpcConfig (\s a -> s { _lambdaFunctionVpcConfig = a })
