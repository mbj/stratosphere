{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinitionversion.html

module Stratosphere.Resources.GreengrassConnectorDefinitionVersion where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassConnectorDefinitionVersionConnector

-- | Full data type definition for GreengrassConnectorDefinitionVersion. See
-- 'greengrassConnectorDefinitionVersion' for a more convenient constructor.
data GreengrassConnectorDefinitionVersion =
  GreengrassConnectorDefinitionVersion
  { _greengrassConnectorDefinitionVersionConnectorDefinitionId :: Val Text
  , _greengrassConnectorDefinitionVersionConnectors :: [GreengrassConnectorDefinitionVersionConnector]
  } deriving (Show, Eq)

instance ToResourceProperties GreengrassConnectorDefinitionVersion where
  toResourceProperties GreengrassConnectorDefinitionVersion{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Greengrass::ConnectorDefinitionVersion"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ConnectorDefinitionId",) . toJSON) _greengrassConnectorDefinitionVersionConnectorDefinitionId
        , (Just . ("Connectors",) . toJSON) _greengrassConnectorDefinitionVersionConnectors
        ]
    }

-- | Constructor for 'GreengrassConnectorDefinitionVersion' containing
-- required fields as arguments.
greengrassConnectorDefinitionVersion
  :: Val Text -- ^ 'gcdvConnectorDefinitionId'
  -> [GreengrassConnectorDefinitionVersionConnector] -- ^ 'gcdvConnectors'
  -> GreengrassConnectorDefinitionVersion
greengrassConnectorDefinitionVersion connectorDefinitionIdarg connectorsarg =
  GreengrassConnectorDefinitionVersion
  { _greengrassConnectorDefinitionVersionConnectorDefinitionId = connectorDefinitionIdarg
  , _greengrassConnectorDefinitionVersionConnectors = connectorsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinitionversion.html#cfn-greengrass-connectordefinitionversion-connectordefinitionid
gcdvConnectorDefinitionId :: Lens' GreengrassConnectorDefinitionVersion (Val Text)
gcdvConnectorDefinitionId = lens _greengrassConnectorDefinitionVersionConnectorDefinitionId (\s a -> s { _greengrassConnectorDefinitionVersionConnectorDefinitionId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinitionversion.html#cfn-greengrass-connectordefinitionversion-connectors
gcdvConnectors :: Lens' GreengrassConnectorDefinitionVersion [GreengrassConnectorDefinitionVersionConnector]
gcdvConnectors = lens _greengrassConnectorDefinitionVersionConnectors (\s a -> s { _greengrassConnectorDefinitionVersionConnectors = a })
