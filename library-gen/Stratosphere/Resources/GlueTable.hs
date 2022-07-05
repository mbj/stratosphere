{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-table.html

module Stratosphere.Resources.GlueTable where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlueTableTableInput

-- | Full data type definition for GlueTable. See 'glueTable' for a more
-- convenient constructor.
data GlueTable =
  GlueTable
  { _glueTableCatalogId :: Val Text
  , _glueTableDatabaseName :: Val Text
  , _glueTableTableInput :: GlueTableTableInput
  } deriving (Show, Eq)

instance ToResourceProperties GlueTable where
  toResourceProperties GlueTable{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Glue::Table"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("CatalogId",) . toJSON) _glueTableCatalogId
        , (Just . ("DatabaseName",) . toJSON) _glueTableDatabaseName
        , (Just . ("TableInput",) . toJSON) _glueTableTableInput
        ]
    }

-- | Constructor for 'GlueTable' containing required fields as arguments.
glueTable
  :: Val Text -- ^ 'gtCatalogId'
  -> Val Text -- ^ 'gtDatabaseName'
  -> GlueTableTableInput -- ^ 'gtTableInput'
  -> GlueTable
glueTable catalogIdarg databaseNamearg tableInputarg =
  GlueTable
  { _glueTableCatalogId = catalogIdarg
  , _glueTableDatabaseName = databaseNamearg
  , _glueTableTableInput = tableInputarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-table.html#cfn-glue-table-catalogid
gtCatalogId :: Lens' GlueTable (Val Text)
gtCatalogId = lens _glueTableCatalogId (\s a -> s { _glueTableCatalogId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-table.html#cfn-glue-table-databasename
gtDatabaseName :: Lens' GlueTable (Val Text)
gtDatabaseName = lens _glueTableDatabaseName (\s a -> s { _glueTableDatabaseName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-table.html#cfn-glue-table-tableinput
gtTableInput :: Lens' GlueTable GlueTableTableInput
gtTableInput = lens _glueTableTableInput (\s a -> s { _glueTableTableInput = a })
