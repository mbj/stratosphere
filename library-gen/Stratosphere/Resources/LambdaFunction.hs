{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html

module Stratosphere.Resources.LambdaFunction where

import Stratosphere.ResourceImports
import Stratosphere.Types
import Stratosphere.ResourceProperties.LambdaFunctionCode
import Stratosphere.ResourceProperties.LambdaFunctionDeadLetterConfig
import Stratosphere.ResourceProperties.LambdaFunctionEnvironment
import Stratosphere.ResourceProperties.LambdaFunctionFileSystemConfig
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.LambdaFunctionTracingConfig
import Stratosphere.ResourceProperties.LambdaFunctionVpcConfig

-- | Full data type definition for LambdaFunction. See 'lambdaFunction' for a
-- more convenient constructor.
data LambdaFunction =
  LambdaFunction
  { _lambdaFunctionCode :: LambdaFunctionCode
  , _lambdaFunctionDeadLetterConfig :: Maybe LambdaFunctionDeadLetterConfig
  , _lambdaFunctionDescription :: Maybe (Val Text)
  , _lambdaFunctionEnvironment :: Maybe LambdaFunctionEnvironment
  , _lambdaFunctionFileSystemConfigs :: Maybe [LambdaFunctionFileSystemConfig]
  , _lambdaFunctionFunctionName :: Maybe (Val Text)
  , _lambdaFunctionHandler :: Val Text
  , _lambdaFunctionKmsKeyArn :: Maybe (Val Text)
  , _lambdaFunctionLayers :: Maybe (ValList Text)
  , _lambdaFunctionMemorySize :: Maybe (Val Integer)
  , _lambdaFunctionReservedConcurrentExecutions :: Maybe (Val Integer)
  , _lambdaFunctionRole :: Val Text
  , _lambdaFunctionRuntime :: Val Runtime
  , _lambdaFunctionTags :: Maybe [Tag]
  , _lambdaFunctionTimeout :: Maybe (Val Integer)
  , _lambdaFunctionTracingConfig :: Maybe LambdaFunctionTracingConfig
  , _lambdaFunctionVpcConfig :: Maybe LambdaFunctionVpcConfig
  } deriving (Show, Eq)

instance ToResourceProperties LambdaFunction where
  toResourceProperties LambdaFunction{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Lambda::Function"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Code",) . toJSON) _lambdaFunctionCode
        , fmap (("DeadLetterConfig",) . toJSON) _lambdaFunctionDeadLetterConfig
        , fmap (("Description",) . toJSON) _lambdaFunctionDescription
        , fmap (("Environment",) . toJSON) _lambdaFunctionEnvironment
        , fmap (("FileSystemConfigs",) . toJSON) _lambdaFunctionFileSystemConfigs
        , fmap (("FunctionName",) . toJSON) _lambdaFunctionFunctionName
        , (Just . ("Handler",) . toJSON) _lambdaFunctionHandler
        , fmap (("KmsKeyArn",) . toJSON) _lambdaFunctionKmsKeyArn
        , fmap (("Layers",) . toJSON) _lambdaFunctionLayers
        , fmap (("MemorySize",) . toJSON) _lambdaFunctionMemorySize
        , fmap (("ReservedConcurrentExecutions",) . toJSON) _lambdaFunctionReservedConcurrentExecutions
        , (Just . ("Role",) . toJSON) _lambdaFunctionRole
        , (Just . ("Runtime",) . toJSON) _lambdaFunctionRuntime
        , fmap (("Tags",) . toJSON) _lambdaFunctionTags
        , fmap (("Timeout",) . toJSON) _lambdaFunctionTimeout
        , fmap (("TracingConfig",) . toJSON) _lambdaFunctionTracingConfig
        , fmap (("VpcConfig",) . toJSON) _lambdaFunctionVpcConfig
        ]
    }

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
  , _lambdaFunctionFileSystemConfigs = Nothing
  , _lambdaFunctionFunctionName = Nothing
  , _lambdaFunctionHandler = handlerarg
  , _lambdaFunctionKmsKeyArn = Nothing
  , _lambdaFunctionLayers = Nothing
  , _lambdaFunctionMemorySize = Nothing
  , _lambdaFunctionReservedConcurrentExecutions = Nothing
  , _lambdaFunctionRole = rolearg
  , _lambdaFunctionRuntime = runtimearg
  , _lambdaFunctionTags = Nothing
  , _lambdaFunctionTimeout = Nothing
  , _lambdaFunctionTracingConfig = Nothing
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-filesystemconfigs
lfFileSystemConfigs :: Lens' LambdaFunction (Maybe [LambdaFunctionFileSystemConfig])
lfFileSystemConfigs = lens _lambdaFunctionFileSystemConfigs (\s a -> s { _lambdaFunctionFileSystemConfigs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-functionname
lfFunctionName :: Lens' LambdaFunction (Maybe (Val Text))
lfFunctionName = lens _lambdaFunctionFunctionName (\s a -> s { _lambdaFunctionFunctionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-handler
lfHandler :: Lens' LambdaFunction (Val Text)
lfHandler = lens _lambdaFunctionHandler (\s a -> s { _lambdaFunctionHandler = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-kmskeyarn
lfKmsKeyArn :: Lens' LambdaFunction (Maybe (Val Text))
lfKmsKeyArn = lens _lambdaFunctionKmsKeyArn (\s a -> s { _lambdaFunctionKmsKeyArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-layers
lfLayers :: Lens' LambdaFunction (Maybe (ValList Text))
lfLayers = lens _lambdaFunctionLayers (\s a -> s { _lambdaFunctionLayers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-memorysize
lfMemorySize :: Lens' LambdaFunction (Maybe (Val Integer))
lfMemorySize = lens _lambdaFunctionMemorySize (\s a -> s { _lambdaFunctionMemorySize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-reservedconcurrentexecutions
lfReservedConcurrentExecutions :: Lens' LambdaFunction (Maybe (Val Integer))
lfReservedConcurrentExecutions = lens _lambdaFunctionReservedConcurrentExecutions (\s a -> s { _lambdaFunctionReservedConcurrentExecutions = a })

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
lfTimeout :: Lens' LambdaFunction (Maybe (Val Integer))
lfTimeout = lens _lambdaFunctionTimeout (\s a -> s { _lambdaFunctionTimeout = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-tracingconfig
lfTracingConfig :: Lens' LambdaFunction (Maybe LambdaFunctionTracingConfig)
lfTracingConfig = lens _lambdaFunctionTracingConfig (\s a -> s { _lambdaFunctionTracingConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-vpcconfig
lfVpcConfig :: Lens' LambdaFunction (Maybe LambdaFunctionVpcConfig)
lfVpcConfig = lens _lambdaFunctionVpcConfig (\s a -> s { _lambdaFunctionVpcConfig = a })
