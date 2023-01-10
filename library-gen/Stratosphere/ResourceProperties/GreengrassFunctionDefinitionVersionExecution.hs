
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-execution.html

module Stratosphere.ResourceProperties.GreengrassFunctionDefinitionVersionExecution where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassFunctionDefinitionVersionRunAs

-- | Full data type definition for
-- GreengrassFunctionDefinitionVersionExecution. See
-- 'greengrassFunctionDefinitionVersionExecution' for a more convenient
-- constructor.
data GreengrassFunctionDefinitionVersionExecution =
  GreengrassFunctionDefinitionVersionExecution
  { _greengrassFunctionDefinitionVersionExecutionIsolationMode :: Maybe (Val Text)
  , _greengrassFunctionDefinitionVersionExecutionRunAs :: Maybe GreengrassFunctionDefinitionVersionRunAs
  } deriving (Show, Eq)

instance ToJSON GreengrassFunctionDefinitionVersionExecution where
  toJSON GreengrassFunctionDefinitionVersionExecution{..} =
    object $
    catMaybes
    [ fmap (("IsolationMode",) . toJSON) _greengrassFunctionDefinitionVersionExecutionIsolationMode
    , fmap (("RunAs",) . toJSON) _greengrassFunctionDefinitionVersionExecutionRunAs
    ]

-- | Constructor for 'GreengrassFunctionDefinitionVersionExecution' containing
-- required fields as arguments.
greengrassFunctionDefinitionVersionExecution
  :: GreengrassFunctionDefinitionVersionExecution
greengrassFunctionDefinitionVersionExecution  =
  GreengrassFunctionDefinitionVersionExecution
  { _greengrassFunctionDefinitionVersionExecutionIsolationMode = Nothing
  , _greengrassFunctionDefinitionVersionExecutionRunAs = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-execution.html#cfn-greengrass-functiondefinitionversion-execution-isolationmode
gfdveIsolationMode :: Lens' GreengrassFunctionDefinitionVersionExecution (Maybe (Val Text))
gfdveIsolationMode = lens _greengrassFunctionDefinitionVersionExecutionIsolationMode (\s a -> s { _greengrassFunctionDefinitionVersionExecutionIsolationMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-execution.html#cfn-greengrass-functiondefinitionversion-execution-runas
gfdveRunAs :: Lens' GreengrassFunctionDefinitionVersionExecution (Maybe GreengrassFunctionDefinitionVersionRunAs)
gfdveRunAs = lens _greengrassFunctionDefinitionVersionExecutionRunAs (\s a -> s { _greengrassFunctionDefinitionVersionExecutionRunAs = a })
