{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-keyspace.html

module Stratosphere.Resources.CassandraKeyspace where

import Stratosphere.ResourceImports


-- | Full data type definition for CassandraKeyspace. See 'cassandraKeyspace'
-- for a more convenient constructor.
data CassandraKeyspace =
  CassandraKeyspace
  { _cassandraKeyspaceKeyspaceName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties CassandraKeyspace where
  toResourceProperties CassandraKeyspace{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Cassandra::Keyspace"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("KeyspaceName",) . toJSON) _cassandraKeyspaceKeyspaceName
        ]
    }

-- | Constructor for 'CassandraKeyspace' containing required fields as
-- arguments.
cassandraKeyspace
  :: CassandraKeyspace
cassandraKeyspace  =
  CassandraKeyspace
  { _cassandraKeyspaceKeyspaceName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-keyspace.html#cfn-cassandra-keyspace-keyspacename
ckKeyspaceName :: Lens' CassandraKeyspace (Maybe (Val Text))
ckKeyspaceName = lens _cassandraKeyspaceKeyspaceName (\s a -> s { _cassandraKeyspaceKeyspaceName = a })
