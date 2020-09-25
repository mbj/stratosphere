{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html

module Stratosphere.ResourceProperties.LakeFormationPermissionsTableWithColumnsResource where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.LakeFormationPermissionsColumnWildcard

-- | Full data type definition for
-- LakeFormationPermissionsTableWithColumnsResource. See
-- 'lakeFormationPermissionsTableWithColumnsResource' for a more convenient
-- constructor.
data LakeFormationPermissionsTableWithColumnsResource =
  LakeFormationPermissionsTableWithColumnsResource
  { _lakeFormationPermissionsTableWithColumnsResourceCatalogId :: Maybe (Val Text)
  , _lakeFormationPermissionsTableWithColumnsResourceColumnNames :: Maybe (ValList Text)
  , _lakeFormationPermissionsTableWithColumnsResourceColumnWildcard :: Maybe LakeFormationPermissionsColumnWildcard
  , _lakeFormationPermissionsTableWithColumnsResourceDatabaseName :: Maybe (Val Text)
  , _lakeFormationPermissionsTableWithColumnsResourceName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON LakeFormationPermissionsTableWithColumnsResource where
  toJSON LakeFormationPermissionsTableWithColumnsResource{..} =
    object $
    catMaybes
    [ fmap (("CatalogId",) . toJSON) _lakeFormationPermissionsTableWithColumnsResourceCatalogId
    , fmap (("ColumnNames",) . toJSON) _lakeFormationPermissionsTableWithColumnsResourceColumnNames
    , fmap (("ColumnWildcard",) . toJSON) _lakeFormationPermissionsTableWithColumnsResourceColumnWildcard
    , fmap (("DatabaseName",) . toJSON) _lakeFormationPermissionsTableWithColumnsResourceDatabaseName
    , fmap (("Name",) . toJSON) _lakeFormationPermissionsTableWithColumnsResourceName
    ]

-- | Constructor for 'LakeFormationPermissionsTableWithColumnsResource'
-- containing required fields as arguments.
lakeFormationPermissionsTableWithColumnsResource
  :: LakeFormationPermissionsTableWithColumnsResource
lakeFormationPermissionsTableWithColumnsResource  =
  LakeFormationPermissionsTableWithColumnsResource
  { _lakeFormationPermissionsTableWithColumnsResourceCatalogId = Nothing
  , _lakeFormationPermissionsTableWithColumnsResourceColumnNames = Nothing
  , _lakeFormationPermissionsTableWithColumnsResourceColumnWildcard = Nothing
  , _lakeFormationPermissionsTableWithColumnsResourceDatabaseName = Nothing
  , _lakeFormationPermissionsTableWithColumnsResourceName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html#cfn-lakeformation-permissions-tablewithcolumnsresource-catalogid
lfptwcrCatalogId :: Lens' LakeFormationPermissionsTableWithColumnsResource (Maybe (Val Text))
lfptwcrCatalogId = lens _lakeFormationPermissionsTableWithColumnsResourceCatalogId (\s a -> s { _lakeFormationPermissionsTableWithColumnsResourceCatalogId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html#cfn-lakeformation-permissions-tablewithcolumnsresource-columnnames
lfptwcrColumnNames :: Lens' LakeFormationPermissionsTableWithColumnsResource (Maybe (ValList Text))
lfptwcrColumnNames = lens _lakeFormationPermissionsTableWithColumnsResourceColumnNames (\s a -> s { _lakeFormationPermissionsTableWithColumnsResourceColumnNames = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html#cfn-lakeformation-permissions-tablewithcolumnsresource-columnwildcard
lfptwcrColumnWildcard :: Lens' LakeFormationPermissionsTableWithColumnsResource (Maybe LakeFormationPermissionsColumnWildcard)
lfptwcrColumnWildcard = lens _lakeFormationPermissionsTableWithColumnsResourceColumnWildcard (\s a -> s { _lakeFormationPermissionsTableWithColumnsResourceColumnWildcard = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html#cfn-lakeformation-permissions-tablewithcolumnsresource-databasename
lfptwcrDatabaseName :: Lens' LakeFormationPermissionsTableWithColumnsResource (Maybe (Val Text))
lfptwcrDatabaseName = lens _lakeFormationPermissionsTableWithColumnsResourceDatabaseName (\s a -> s { _lakeFormationPermissionsTableWithColumnsResourceDatabaseName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html#cfn-lakeformation-permissions-tablewithcolumnsresource-name
lfptwcrName :: Lens' LakeFormationPermissionsTableWithColumnsResource (Maybe (Val Text))
lfptwcrName = lens _lakeFormationPermissionsTableWithColumnsResourceName (\s a -> s { _lakeFormationPermissionsTableWithColumnsResourceName = a })
