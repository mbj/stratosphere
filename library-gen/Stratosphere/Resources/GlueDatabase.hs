{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-database.html

module Stratosphere.Resources.GlueDatabase where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlueDatabaseDatabaseInput

-- | Full data type definition for GlueDatabase. See 'glueDatabase' for a more
-- convenient constructor.
data GlueDatabase =
  GlueDatabase
  { _glueDatabaseCatalogId :: Val Text
  , _glueDatabaseDatabaseInput :: GlueDatabaseDatabaseInput
  } deriving (Show, Eq)

instance ToResourceProperties GlueDatabase where
  toResourceProperties GlueDatabase{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Glue::Database"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("CatalogId",) . toJSON) _glueDatabaseCatalogId
        , (Just . ("DatabaseInput",) . toJSON) _glueDatabaseDatabaseInput
        ]
    }

-- | Constructor for 'GlueDatabase' containing required fields as arguments.
glueDatabase
  :: Val Text -- ^ 'gdCatalogId'
  -> GlueDatabaseDatabaseInput -- ^ 'gdDatabaseInput'
  -> GlueDatabase
glueDatabase catalogIdarg databaseInputarg =
  GlueDatabase
  { _glueDatabaseCatalogId = catalogIdarg
  , _glueDatabaseDatabaseInput = databaseInputarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-database.html#cfn-glue-database-catalogid
gdCatalogId :: Lens' GlueDatabase (Val Text)
gdCatalogId = lens _glueDatabaseCatalogId (\s a -> s { _glueDatabaseCatalogId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-database.html#cfn-glue-database-databaseinput
gdDatabaseInput :: Lens' GlueDatabase GlueDatabaseDatabaseInput
gdDatabaseInput = lens _glueDatabaseDatabaseInput (\s a -> s { _glueDatabaseDatabaseInput = a })
