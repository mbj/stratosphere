
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connectordefinitionversion.html

module Stratosphere.ResourceProperties.GreengrassConnectorDefinitionConnectorDefinitionVersion where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassConnectorDefinitionConnector

-- | Full data type definition for
-- GreengrassConnectorDefinitionConnectorDefinitionVersion. See
-- 'greengrassConnectorDefinitionConnectorDefinitionVersion' for a more
-- convenient constructor.
data GreengrassConnectorDefinitionConnectorDefinitionVersion =
  GreengrassConnectorDefinitionConnectorDefinitionVersion
  { _greengrassConnectorDefinitionConnectorDefinitionVersionConnectors :: [GreengrassConnectorDefinitionConnector]
  } deriving (Show, Eq)

instance ToJSON GreengrassConnectorDefinitionConnectorDefinitionVersion where
  toJSON GreengrassConnectorDefinitionConnectorDefinitionVersion{..} =
    object $
    catMaybes
    [ (Just . ("Connectors",) . toJSON) _greengrassConnectorDefinitionConnectorDefinitionVersionConnectors
    ]

-- | Constructor for 'GreengrassConnectorDefinitionConnectorDefinitionVersion'
-- containing required fields as arguments.
greengrassConnectorDefinitionConnectorDefinitionVersion
  :: [GreengrassConnectorDefinitionConnector] -- ^ 'gcdcdvConnectors'
  -> GreengrassConnectorDefinitionConnectorDefinitionVersion
greengrassConnectorDefinitionConnectorDefinitionVersion connectorsarg =
  GreengrassConnectorDefinitionConnectorDefinitionVersion
  { _greengrassConnectorDefinitionConnectorDefinitionVersionConnectors = connectorsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connectordefinitionversion.html#cfn-greengrass-connectordefinition-connectordefinitionversion-connectors
gcdcdvConnectors :: Lens' GreengrassConnectorDefinitionConnectorDefinitionVersion [GreengrassConnectorDefinitionConnector]
gcdcdvConnectors = lens _greengrassConnectorDefinitionConnectorDefinitionVersionConnectors (\s a -> s { _greengrassConnectorDefinitionConnectorDefinitionVersionConnectors = a })
