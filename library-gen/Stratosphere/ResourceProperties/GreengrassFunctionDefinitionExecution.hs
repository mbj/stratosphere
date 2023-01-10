
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-execution.html

module Stratosphere.ResourceProperties.GreengrassFunctionDefinitionExecution where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassFunctionDefinitionRunAs

-- | Full data type definition for GreengrassFunctionDefinitionExecution. See
-- 'greengrassFunctionDefinitionExecution' for a more convenient
-- constructor.
data GreengrassFunctionDefinitionExecution =
  GreengrassFunctionDefinitionExecution
  { _greengrassFunctionDefinitionExecutionIsolationMode :: Maybe (Val Text)
  , _greengrassFunctionDefinitionExecutionRunAs :: Maybe GreengrassFunctionDefinitionRunAs
  } deriving (Show, Eq)

instance ToJSON GreengrassFunctionDefinitionExecution where
  toJSON GreengrassFunctionDefinitionExecution{..} =
    object $
    catMaybes
    [ fmap (("IsolationMode",) . toJSON) _greengrassFunctionDefinitionExecutionIsolationMode
    , fmap (("RunAs",) . toJSON) _greengrassFunctionDefinitionExecutionRunAs
    ]

-- | Constructor for 'GreengrassFunctionDefinitionExecution' containing
-- required fields as arguments.
greengrassFunctionDefinitionExecution
  :: GreengrassFunctionDefinitionExecution
greengrassFunctionDefinitionExecution  =
  GreengrassFunctionDefinitionExecution
  { _greengrassFunctionDefinitionExecutionIsolationMode = Nothing
  , _greengrassFunctionDefinitionExecutionRunAs = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-execution.html#cfn-greengrass-functiondefinition-execution-isolationmode
gfdeIsolationMode :: Lens' GreengrassFunctionDefinitionExecution (Maybe (Val Text))
gfdeIsolationMode = lens _greengrassFunctionDefinitionExecutionIsolationMode (\s a -> s { _greengrassFunctionDefinitionExecutionIsolationMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-execution.html#cfn-greengrass-functiondefinition-execution-runas
gfdeRunAs :: Lens' GreengrassFunctionDefinitionExecution (Maybe GreengrassFunctionDefinitionRunAs)
gfdeRunAs = lens _greengrassFunctionDefinitionExecutionRunAs (\s a -> s { _greengrassFunctionDefinitionExecutionRunAs = a })
