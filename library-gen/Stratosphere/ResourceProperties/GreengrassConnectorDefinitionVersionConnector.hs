{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinitionversion-connector.html

module Stratosphere.ResourceProperties.GreengrassConnectorDefinitionVersionConnector where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- GreengrassConnectorDefinitionVersionConnector. See
-- 'greengrassConnectorDefinitionVersionConnector' for a more convenient
-- constructor.
data GreengrassConnectorDefinitionVersionConnector =
  GreengrassConnectorDefinitionVersionConnector
  { _greengrassConnectorDefinitionVersionConnectorConnectorArn :: Val Text
  , _greengrassConnectorDefinitionVersionConnectorId :: Val Text
  , _greengrassConnectorDefinitionVersionConnectorParameters :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON GreengrassConnectorDefinitionVersionConnector where
  toJSON GreengrassConnectorDefinitionVersionConnector{..} =
    object $
    catMaybes
    [ (Just . ("ConnectorArn",) . toJSON) _greengrassConnectorDefinitionVersionConnectorConnectorArn
    , (Just . ("Id",) . toJSON) _greengrassConnectorDefinitionVersionConnectorId
    , fmap (("Parameters",) . toJSON) _greengrassConnectorDefinitionVersionConnectorParameters
    ]

-- | Constructor for 'GreengrassConnectorDefinitionVersionConnector'
-- containing required fields as arguments.
greengrassConnectorDefinitionVersionConnector
  :: Val Text -- ^ 'gcdvcnConnectorArn'
  -> Val Text -- ^ 'gcdvcnId'
  -> GreengrassConnectorDefinitionVersionConnector
greengrassConnectorDefinitionVersionConnector connectorArnarg idarg =
  GreengrassConnectorDefinitionVersionConnector
  { _greengrassConnectorDefinitionVersionConnectorConnectorArn = connectorArnarg
  , _greengrassConnectorDefinitionVersionConnectorId = idarg
  , _greengrassConnectorDefinitionVersionConnectorParameters = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinitionversion-connector.html#cfn-greengrass-connectordefinitionversion-connector-connectorarn
gcdvcnConnectorArn :: Lens' GreengrassConnectorDefinitionVersionConnector (Val Text)
gcdvcnConnectorArn = lens _greengrassConnectorDefinitionVersionConnectorConnectorArn (\s a -> s { _greengrassConnectorDefinitionVersionConnectorConnectorArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinitionversion-connector.html#cfn-greengrass-connectordefinitionversion-connector-id
gcdvcnId :: Lens' GreengrassConnectorDefinitionVersionConnector (Val Text)
gcdvcnId = lens _greengrassConnectorDefinitionVersionConnectorId (\s a -> s { _greengrassConnectorDefinitionVersionConnectorId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinitionversion-connector.html#cfn-greengrass-connectordefinitionversion-connector-parameters
gcdvcnParameters :: Lens' GreengrassConnectorDefinitionVersionConnector (Maybe Object)
gcdvcnParameters = lens _greengrassConnectorDefinitionVersionConnectorParameters (\s a -> s { _greengrassConnectorDefinitionVersionConnectorParameters = a })
