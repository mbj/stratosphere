
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-connectionslist.html

module Stratosphere.ResourceProperties.GlueJobConnectionsList where

import Stratosphere.ResourceImports


-- | Full data type definition for GlueJobConnectionsList. See
-- 'glueJobConnectionsList' for a more convenient constructor.
data GlueJobConnectionsList =
  GlueJobConnectionsList
  { _glueJobConnectionsListConnections :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON GlueJobConnectionsList where
  toJSON GlueJobConnectionsList{..} =
    object $
    catMaybes
    [ fmap (("Connections",) . toJSON) _glueJobConnectionsListConnections
    ]

-- | Constructor for 'GlueJobConnectionsList' containing required fields as
-- arguments.
glueJobConnectionsList
  :: GlueJobConnectionsList
glueJobConnectionsList  =
  GlueJobConnectionsList
  { _glueJobConnectionsListConnections = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-connectionslist.html#cfn-glue-job-connectionslist-connections
gjclConnections :: Lens' GlueJobConnectionsList (Maybe (ValList Text))
gjclConnections = lens _glueJobConnectionsListConnections (\s a -> s { _glueJobConnectionsListConnections = a })
