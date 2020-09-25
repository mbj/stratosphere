{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tableresource.html

module Stratosphere.ResourceProperties.LakeFormationPermissionsTableResource where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.LakeFormationPermissionsTableWildcard

-- | Full data type definition for LakeFormationPermissionsTableResource. See
-- 'lakeFormationPermissionsTableResource' for a more convenient
-- constructor.
data LakeFormationPermissionsTableResource =
  LakeFormationPermissionsTableResource
  { _lakeFormationPermissionsTableResourceCatalogId :: Maybe (Val Text)
  , _lakeFormationPermissionsTableResourceDatabaseName :: Maybe (Val Text)
  , _lakeFormationPermissionsTableResourceName :: Maybe (Val Text)
  , _lakeFormationPermissionsTableResourceTableWildcard :: Maybe LakeFormationPermissionsTableWildcard
  } deriving (Show, Eq)

instance ToJSON LakeFormationPermissionsTableResource where
  toJSON LakeFormationPermissionsTableResource{..} =
    object $
    catMaybes
    [ fmap (("CatalogId",) . toJSON) _lakeFormationPermissionsTableResourceCatalogId
    , fmap (("DatabaseName",) . toJSON) _lakeFormationPermissionsTableResourceDatabaseName
    , fmap (("Name",) . toJSON) _lakeFormationPermissionsTableResourceName
    , fmap (("TableWildcard",) . toJSON) _lakeFormationPermissionsTableResourceTableWildcard
    ]

-- | Constructor for 'LakeFormationPermissionsTableResource' containing
-- required fields as arguments.
lakeFormationPermissionsTableResource
  :: LakeFormationPermissionsTableResource
lakeFormationPermissionsTableResource  =
  LakeFormationPermissionsTableResource
  { _lakeFormationPermissionsTableResourceCatalogId = Nothing
  , _lakeFormationPermissionsTableResourceDatabaseName = Nothing
  , _lakeFormationPermissionsTableResourceName = Nothing
  , _lakeFormationPermissionsTableResourceTableWildcard = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tableresource.html#cfn-lakeformation-permissions-tableresource-catalogid
lfptrCatalogId :: Lens' LakeFormationPermissionsTableResource (Maybe (Val Text))
lfptrCatalogId = lens _lakeFormationPermissionsTableResourceCatalogId (\s a -> s { _lakeFormationPermissionsTableResourceCatalogId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tableresource.html#cfn-lakeformation-permissions-tableresource-databasename
lfptrDatabaseName :: Lens' LakeFormationPermissionsTableResource (Maybe (Val Text))
lfptrDatabaseName = lens _lakeFormationPermissionsTableResourceDatabaseName (\s a -> s { _lakeFormationPermissionsTableResourceDatabaseName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tableresource.html#cfn-lakeformation-permissions-tableresource-name
lfptrName :: Lens' LakeFormationPermissionsTableResource (Maybe (Val Text))
lfptrName = lens _lakeFormationPermissionsTableResourceName (\s a -> s { _lakeFormationPermissionsTableResourceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tableresource.html#cfn-lakeformation-permissions-tableresource-tablewildcard
lfptrTableWildcard :: Lens' LakeFormationPermissionsTableResource (Maybe LakeFormationPermissionsTableWildcard)
lfptrTableWildcard = lens _lakeFormationPermissionsTableResourceTableWildcard (\s a -> s { _lakeFormationPermissionsTableResourceTableWildcard = a })
