
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html

module Stratosphere.ResourceProperties.GlueMLTransformGlueTables where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for GlueMLTransformGlueTables. See
-- 'glueMLTransformGlueTables' for a more convenient constructor.
data GlueMLTransformGlueTables =
  GlueMLTransformGlueTables
  { _glueMLTransformGlueTablesCatalogId :: Maybe (Val Text)
  , _glueMLTransformGlueTablesConnectionName :: Maybe (Val Text)
  , _glueMLTransformGlueTablesDatabaseName :: Val Text
  , _glueMLTransformGlueTablesTableName :: Val Text
  } deriving (Show, Eq)

instance ToJSON GlueMLTransformGlueTables where
  toJSON GlueMLTransformGlueTables{..} =
    object $
    catMaybes
    [ fmap (("CatalogId",) . toJSON) _glueMLTransformGlueTablesCatalogId
    , fmap (("ConnectionName",) . toJSON) _glueMLTransformGlueTablesConnectionName
    , (Just . ("DatabaseName",) . toJSON) _glueMLTransformGlueTablesDatabaseName
    , (Just . ("TableName",) . toJSON) _glueMLTransformGlueTablesTableName
    ]

-- | Constructor for 'GlueMLTransformGlueTables' containing required fields as
-- arguments.
glueMLTransformGlueTables
  :: Val Text -- ^ 'gmltgtDatabaseName'
  -> Val Text -- ^ 'gmltgtTableName'
  -> GlueMLTransformGlueTables
glueMLTransformGlueTables databaseNamearg tableNamearg =
  GlueMLTransformGlueTables
  { _glueMLTransformGlueTablesCatalogId = Nothing
  , _glueMLTransformGlueTablesConnectionName = Nothing
  , _glueMLTransformGlueTablesDatabaseName = databaseNamearg
  , _glueMLTransformGlueTablesTableName = tableNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html#cfn-glue-mltransform-inputrecordtables-gluetables-catalogid
gmltgtCatalogId :: Lens' GlueMLTransformGlueTables (Maybe (Val Text))
gmltgtCatalogId = lens _glueMLTransformGlueTablesCatalogId (\s a -> s { _glueMLTransformGlueTablesCatalogId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html#cfn-glue-mltransform-inputrecordtables-gluetables-connectionname
gmltgtConnectionName :: Lens' GlueMLTransformGlueTables (Maybe (Val Text))
gmltgtConnectionName = lens _glueMLTransformGlueTablesConnectionName (\s a -> s { _glueMLTransformGlueTablesConnectionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html#cfn-glue-mltransform-inputrecordtables-gluetables-databasename
gmltgtDatabaseName :: Lens' GlueMLTransformGlueTables (Val Text)
gmltgtDatabaseName = lens _glueMLTransformGlueTablesDatabaseName (\s a -> s { _glueMLTransformGlueTablesDatabaseName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html#cfn-glue-mltransform-inputrecordtables-gluetables-tablename
gmltgtTableName :: Lens' GlueMLTransformGlueTables (Val Text)
gmltgtTableName = lens _glueMLTransformGlueTablesTableName (\s a -> s { _glueMLTransformGlueTablesTableName = a })
