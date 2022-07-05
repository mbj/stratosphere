{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-connection.html

module Stratosphere.Resources.GlueConnection where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlueConnectionConnectionInput

-- | Full data type definition for GlueConnection. See 'glueConnection' for a
-- more convenient constructor.
data GlueConnection =
  GlueConnection
  { _glueConnectionCatalogId :: Val Text
  , _glueConnectionConnectionInput :: GlueConnectionConnectionInput
  } deriving (Show, Eq)

instance ToResourceProperties GlueConnection where
  toResourceProperties GlueConnection{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Glue::Connection"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("CatalogId",) . toJSON) _glueConnectionCatalogId
        , (Just . ("ConnectionInput",) . toJSON) _glueConnectionConnectionInput
        ]
    }

-- | Constructor for 'GlueConnection' containing required fields as arguments.
glueConnection
  :: Val Text -- ^ 'gcCatalogId'
  -> GlueConnectionConnectionInput -- ^ 'gcConnectionInput'
  -> GlueConnection
glueConnection catalogIdarg connectionInputarg =
  GlueConnection
  { _glueConnectionCatalogId = catalogIdarg
  , _glueConnectionConnectionInput = connectionInputarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-connection.html#cfn-glue-connection-catalogid
gcCatalogId :: Lens' GlueConnection (Val Text)
gcCatalogId = lens _glueConnectionCatalogId (\s a -> s { _glueConnectionCatalogId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-connection.html#cfn-glue-connection-connectioninput
gcConnectionInput :: Lens' GlueConnection GlueConnectionConnectionInput
gcConnectionInput = lens _glueConnectionConnectionInput (\s a -> s { _glueConnectionConnectionInput = a })
