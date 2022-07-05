{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-connection.html

module Stratosphere.Resources.CodeStarConnectionsConnection where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for CodeStarConnectionsConnection. See
-- 'codeStarConnectionsConnection' for a more convenient constructor.
data CodeStarConnectionsConnection =
  CodeStarConnectionsConnection
  { _codeStarConnectionsConnectionConnectionName :: Val Text
  , _codeStarConnectionsConnectionHostArn :: Maybe (Val Text)
  , _codeStarConnectionsConnectionProviderType :: Maybe (Val Text)
  , _codeStarConnectionsConnectionTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties CodeStarConnectionsConnection where
  toResourceProperties CodeStarConnectionsConnection{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CodeStarConnections::Connection"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ConnectionName",) . toJSON) _codeStarConnectionsConnectionConnectionName
        , fmap (("HostArn",) . toJSON) _codeStarConnectionsConnectionHostArn
        , fmap (("ProviderType",) . toJSON) _codeStarConnectionsConnectionProviderType
        , fmap (("Tags",) . toJSON) _codeStarConnectionsConnectionTags
        ]
    }

-- | Constructor for 'CodeStarConnectionsConnection' containing required
-- fields as arguments.
codeStarConnectionsConnection
  :: Val Text -- ^ 'csccConnectionName'
  -> CodeStarConnectionsConnection
codeStarConnectionsConnection connectionNamearg =
  CodeStarConnectionsConnection
  { _codeStarConnectionsConnectionConnectionName = connectionNamearg
  , _codeStarConnectionsConnectionHostArn = Nothing
  , _codeStarConnectionsConnectionProviderType = Nothing
  , _codeStarConnectionsConnectionTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-connection.html#cfn-codestarconnections-connection-connectionname
csccConnectionName :: Lens' CodeStarConnectionsConnection (Val Text)
csccConnectionName = lens _codeStarConnectionsConnectionConnectionName (\s a -> s { _codeStarConnectionsConnectionConnectionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-connection.html#cfn-codestarconnections-connection-hostarn
csccHostArn :: Lens' CodeStarConnectionsConnection (Maybe (Val Text))
csccHostArn = lens _codeStarConnectionsConnectionHostArn (\s a -> s { _codeStarConnectionsConnectionHostArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-connection.html#cfn-codestarconnections-connection-providertype
csccProviderType :: Lens' CodeStarConnectionsConnection (Maybe (Val Text))
csccProviderType = lens _codeStarConnectionsConnectionProviderType (\s a -> s { _codeStarConnectionsConnectionProviderType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-connection.html#cfn-codestarconnections-connection-tags
csccTags :: Lens' CodeStarConnectionsConnection (Maybe [Tag])
csccTags = lens _codeStarConnectionsConnectionTags (\s a -> s { _codeStarConnectionsConnectionTags = a })
