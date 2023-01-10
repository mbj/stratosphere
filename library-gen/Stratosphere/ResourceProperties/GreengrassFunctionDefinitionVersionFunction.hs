
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-function.html

module Stratosphere.ResourceProperties.GreengrassFunctionDefinitionVersionFunction where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassFunctionDefinitionVersionFunctionConfiguration

-- | Full data type definition for
-- GreengrassFunctionDefinitionVersionFunction. See
-- 'greengrassFunctionDefinitionVersionFunction' for a more convenient
-- constructor.
data GreengrassFunctionDefinitionVersionFunction =
  GreengrassFunctionDefinitionVersionFunction
  { _greengrassFunctionDefinitionVersionFunctionFunctionArn :: Val Text
  , _greengrassFunctionDefinitionVersionFunctionFunctionConfiguration :: GreengrassFunctionDefinitionVersionFunctionConfiguration
  , _greengrassFunctionDefinitionVersionFunctionId :: Val Text
  } deriving (Show, Eq)

instance ToJSON GreengrassFunctionDefinitionVersionFunction where
  toJSON GreengrassFunctionDefinitionVersionFunction{..} =
    object $
    catMaybes
    [ (Just . ("FunctionArn",) . toJSON) _greengrassFunctionDefinitionVersionFunctionFunctionArn
    , (Just . ("FunctionConfiguration",) . toJSON) _greengrassFunctionDefinitionVersionFunctionFunctionConfiguration
    , (Just . ("Id",) . toJSON) _greengrassFunctionDefinitionVersionFunctionId
    ]

-- | Constructor for 'GreengrassFunctionDefinitionVersionFunction' containing
-- required fields as arguments.
greengrassFunctionDefinitionVersionFunction
  :: Val Text -- ^ 'gfdvfFunctionArn'
  -> GreengrassFunctionDefinitionVersionFunctionConfiguration -- ^ 'gfdvfFunctionConfiguration'
  -> Val Text -- ^ 'gfdvfId'
  -> GreengrassFunctionDefinitionVersionFunction
greengrassFunctionDefinitionVersionFunction functionArnarg functionConfigurationarg idarg =
  GreengrassFunctionDefinitionVersionFunction
  { _greengrassFunctionDefinitionVersionFunctionFunctionArn = functionArnarg
  , _greengrassFunctionDefinitionVersionFunctionFunctionConfiguration = functionConfigurationarg
  , _greengrassFunctionDefinitionVersionFunctionId = idarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-function.html#cfn-greengrass-functiondefinitionversion-function-functionarn
gfdvfFunctionArn :: Lens' GreengrassFunctionDefinitionVersionFunction (Val Text)
gfdvfFunctionArn = lens _greengrassFunctionDefinitionVersionFunctionFunctionArn (\s a -> s { _greengrassFunctionDefinitionVersionFunctionFunctionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-function.html#cfn-greengrass-functiondefinitionversion-function-functionconfiguration
gfdvfFunctionConfiguration :: Lens' GreengrassFunctionDefinitionVersionFunction GreengrassFunctionDefinitionVersionFunctionConfiguration
gfdvfFunctionConfiguration = lens _greengrassFunctionDefinitionVersionFunctionFunctionConfiguration (\s a -> s { _greengrassFunctionDefinitionVersionFunctionFunctionConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-function.html#cfn-greengrass-functiondefinitionversion-function-id
gfdvfId :: Lens' GreengrassFunctionDefinitionVersionFunction (Val Text)
gfdvfId = lens _greengrassFunctionDefinitionVersionFunctionId (\s a -> s { _greengrassFunctionDefinitionVersionFunctionId = a })
