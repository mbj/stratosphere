{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-connection.html

module Stratosphere.Resources.CodeStarConnectionsConnection where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeStarConnectionsConnection. See
-- 'codeStarConnectionsConnection' for a more convenient constructor.
data CodeStarConnectionsConnection =
  CodeStarConnectionsConnection
  { _codeStarConnectionsConnectionConnectionName :: Val Text
  , _codeStarConnectionsConnectionProviderType :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties CodeStarConnectionsConnection where
  toResourceProperties CodeStarConnectionsConnection{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CodeStarConnections::Connection"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ (Just . ("ConnectionName",) . toJSON) _codeStarConnectionsConnectionConnectionName
        , (Just . ("ProviderType",) . toJSON) _codeStarConnectionsConnectionProviderType
        ]
    }

-- | Constructor for 'CodeStarConnectionsConnection' containing required
-- fields as arguments.
codeStarConnectionsConnection
  :: Val Text -- ^ 'csccConnectionName'
  -> Val Text -- ^ 'csccProviderType'
  -> CodeStarConnectionsConnection
codeStarConnectionsConnection connectionNamearg providerTypearg =
  CodeStarConnectionsConnection
  { _codeStarConnectionsConnectionConnectionName = connectionNamearg
  , _codeStarConnectionsConnectionProviderType = providerTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-connection.html#cfn-codestarconnections-connection-connectionname
csccConnectionName :: Lens' CodeStarConnectionsConnection (Val Text)
csccConnectionName = lens _codeStarConnectionsConnectionConnectionName (\s a -> s { _codeStarConnectionsConnectionConnectionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-connection.html#cfn-codestarconnections-connection-providertype
csccProviderType :: Lens' CodeStarConnectionsConnection (Val Text)
csccProviderType = lens _codeStarConnectionsConnectionProviderType (\s a -> s { _codeStarConnectionsConnectionProviderType = a })
