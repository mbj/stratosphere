
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-defaultconfig.html

module Stratosphere.ResourceProperties.GreengrassFunctionDefinitionVersionDefaultConfig where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassFunctionDefinitionVersionExecution

-- | Full data type definition for
-- GreengrassFunctionDefinitionVersionDefaultConfig. See
-- 'greengrassFunctionDefinitionVersionDefaultConfig' for a more convenient
-- constructor.
data GreengrassFunctionDefinitionVersionDefaultConfig =
  GreengrassFunctionDefinitionVersionDefaultConfig
  { _greengrassFunctionDefinitionVersionDefaultConfigExecution :: GreengrassFunctionDefinitionVersionExecution
  } deriving (Show, Eq)

instance ToJSON GreengrassFunctionDefinitionVersionDefaultConfig where
  toJSON GreengrassFunctionDefinitionVersionDefaultConfig{..} =
    object $
    catMaybes
    [ (Just . ("Execution",) . toJSON) _greengrassFunctionDefinitionVersionDefaultConfigExecution
    ]

-- | Constructor for 'GreengrassFunctionDefinitionVersionDefaultConfig'
-- containing required fields as arguments.
greengrassFunctionDefinitionVersionDefaultConfig
  :: GreengrassFunctionDefinitionVersionExecution -- ^ 'gfdvdcExecution'
  -> GreengrassFunctionDefinitionVersionDefaultConfig
greengrassFunctionDefinitionVersionDefaultConfig executionarg =
  GreengrassFunctionDefinitionVersionDefaultConfig
  { _greengrassFunctionDefinitionVersionDefaultConfigExecution = executionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-defaultconfig.html#cfn-greengrass-functiondefinitionversion-defaultconfig-execution
gfdvdcExecution :: Lens' GreengrassFunctionDefinitionVersionDefaultConfig GreengrassFunctionDefinitionVersionExecution
gfdvdcExecution = lens _greengrassFunctionDefinitionVersionDefaultConfigExecution (\s a -> s { _greengrassFunctionDefinitionVersionDefaultConfigExecution = a })
