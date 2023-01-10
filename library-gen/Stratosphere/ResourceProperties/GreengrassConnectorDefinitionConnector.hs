
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connector.html

module Stratosphere.ResourceProperties.GreengrassConnectorDefinitionConnector where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for GreengrassConnectorDefinitionConnector. See
-- 'greengrassConnectorDefinitionConnector' for a more convenient
-- constructor.
data GreengrassConnectorDefinitionConnector =
  GreengrassConnectorDefinitionConnector
  { _greengrassConnectorDefinitionConnectorConnectorArn :: Val Text
  , _greengrassConnectorDefinitionConnectorId :: Val Text
  , _greengrassConnectorDefinitionConnectorParameters :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON GreengrassConnectorDefinitionConnector where
  toJSON GreengrassConnectorDefinitionConnector{..} =
    object $
    catMaybes
    [ (Just . ("ConnectorArn",) . toJSON) _greengrassConnectorDefinitionConnectorConnectorArn
    , (Just . ("Id",) . toJSON) _greengrassConnectorDefinitionConnectorId
    , fmap (("Parameters",) . toJSON) _greengrassConnectorDefinitionConnectorParameters
    ]

-- | Constructor for 'GreengrassConnectorDefinitionConnector' containing
-- required fields as arguments.
greengrassConnectorDefinitionConnector
  :: Val Text -- ^ 'gcdcnConnectorArn'
  -> Val Text -- ^ 'gcdcnId'
  -> GreengrassConnectorDefinitionConnector
greengrassConnectorDefinitionConnector connectorArnarg idarg =
  GreengrassConnectorDefinitionConnector
  { _greengrassConnectorDefinitionConnectorConnectorArn = connectorArnarg
  , _greengrassConnectorDefinitionConnectorId = idarg
  , _greengrassConnectorDefinitionConnectorParameters = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connector.html#cfn-greengrass-connectordefinition-connector-connectorarn
gcdcnConnectorArn :: Lens' GreengrassConnectorDefinitionConnector (Val Text)
gcdcnConnectorArn = lens _greengrassConnectorDefinitionConnectorConnectorArn (\s a -> s { _greengrassConnectorDefinitionConnectorConnectorArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connector.html#cfn-greengrass-connectordefinition-connector-id
gcdcnId :: Lens' GreengrassConnectorDefinitionConnector (Val Text)
gcdcnId = lens _greengrassConnectorDefinitionConnectorId (\s a -> s { _greengrassConnectorDefinitionConnectorId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connector.html#cfn-greengrass-connectordefinition-connector-parameters
gcdcnParameters :: Lens' GreengrassConnectorDefinitionConnector (Maybe Object)
gcdcnParameters = lens _greengrassConnectorDefinitionConnectorParameters (\s a -> s { _greengrassConnectorDefinitionConnectorParameters = a })
