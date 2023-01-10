
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-defaultconfig.html

module Stratosphere.ResourceProperties.GreengrassFunctionDefinitionDefaultConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassFunctionDefinitionExecution

-- | Full data type definition for GreengrassFunctionDefinitionDefaultConfig.
-- See 'greengrassFunctionDefinitionDefaultConfig' for a more convenient
-- constructor.
data GreengrassFunctionDefinitionDefaultConfig =
  GreengrassFunctionDefinitionDefaultConfig
  { _greengrassFunctionDefinitionDefaultConfigExecution :: GreengrassFunctionDefinitionExecution
  } deriving (Show, Eq)

instance ToJSON GreengrassFunctionDefinitionDefaultConfig where
  toJSON GreengrassFunctionDefinitionDefaultConfig{..} =
    object $
    catMaybes
    [ (Just . ("Execution",) . toJSON) _greengrassFunctionDefinitionDefaultConfigExecution
    ]

-- | Constructor for 'GreengrassFunctionDefinitionDefaultConfig' containing
-- required fields as arguments.
greengrassFunctionDefinitionDefaultConfig
  :: GreengrassFunctionDefinitionExecution -- ^ 'gfddcExecution'
  -> GreengrassFunctionDefinitionDefaultConfig
greengrassFunctionDefinitionDefaultConfig executionarg =
  GreengrassFunctionDefinitionDefaultConfig
  { _greengrassFunctionDefinitionDefaultConfigExecution = executionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-defaultconfig.html#cfn-greengrass-functiondefinition-defaultconfig-execution
gfddcExecution :: Lens' GreengrassFunctionDefinitionDefaultConfig GreengrassFunctionDefinitionExecution
gfddcExecution = lens _greengrassFunctionDefinitionDefaultConfigExecution (\s a -> s { _greengrassFunctionDefinitionDefaultConfigExecution = a })
