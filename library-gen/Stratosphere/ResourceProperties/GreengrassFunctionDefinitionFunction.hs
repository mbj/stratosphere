
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-function.html

module Stratosphere.ResourceProperties.GreengrassFunctionDefinitionFunction where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassFunctionDefinitionFunctionConfiguration

-- | Full data type definition for GreengrassFunctionDefinitionFunction. See
-- 'greengrassFunctionDefinitionFunction' for a more convenient constructor.
data GreengrassFunctionDefinitionFunction =
  GreengrassFunctionDefinitionFunction
  { _greengrassFunctionDefinitionFunctionFunctionArn :: Val Text
  , _greengrassFunctionDefinitionFunctionFunctionConfiguration :: GreengrassFunctionDefinitionFunctionConfiguration
  , _greengrassFunctionDefinitionFunctionId :: Val Text
  } deriving (Show, Eq)

instance ToJSON GreengrassFunctionDefinitionFunction where
  toJSON GreengrassFunctionDefinitionFunction{..} =
    object $
    catMaybes
    [ (Just . ("FunctionArn",) . toJSON) _greengrassFunctionDefinitionFunctionFunctionArn
    , (Just . ("FunctionConfiguration",) . toJSON) _greengrassFunctionDefinitionFunctionFunctionConfiguration
    , (Just . ("Id",) . toJSON) _greengrassFunctionDefinitionFunctionId
    ]

-- | Constructor for 'GreengrassFunctionDefinitionFunction' containing
-- required fields as arguments.
greengrassFunctionDefinitionFunction
  :: Val Text -- ^ 'gfdfFunctionArn'
  -> GreengrassFunctionDefinitionFunctionConfiguration -- ^ 'gfdfFunctionConfiguration'
  -> Val Text -- ^ 'gfdfId'
  -> GreengrassFunctionDefinitionFunction
greengrassFunctionDefinitionFunction functionArnarg functionConfigurationarg idarg =
  GreengrassFunctionDefinitionFunction
  { _greengrassFunctionDefinitionFunctionFunctionArn = functionArnarg
  , _greengrassFunctionDefinitionFunctionFunctionConfiguration = functionConfigurationarg
  , _greengrassFunctionDefinitionFunctionId = idarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-function.html#cfn-greengrass-functiondefinition-function-functionarn
gfdfFunctionArn :: Lens' GreengrassFunctionDefinitionFunction (Val Text)
gfdfFunctionArn = lens _greengrassFunctionDefinitionFunctionFunctionArn (\s a -> s { _greengrassFunctionDefinitionFunctionFunctionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-function.html#cfn-greengrass-functiondefinition-function-functionconfiguration
gfdfFunctionConfiguration :: Lens' GreengrassFunctionDefinitionFunction GreengrassFunctionDefinitionFunctionConfiguration
gfdfFunctionConfiguration = lens _greengrassFunctionDefinitionFunctionFunctionConfiguration (\s a -> s { _greengrassFunctionDefinitionFunctionFunctionConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-function.html#cfn-greengrass-functiondefinition-function-id
gfdfId :: Lens' GreengrassFunctionDefinitionFunction (Val Text)
gfdfId = lens _greengrassFunctionDefinitionFunctionId (\s a -> s { _greengrassFunctionDefinitionFunctionId = a })
