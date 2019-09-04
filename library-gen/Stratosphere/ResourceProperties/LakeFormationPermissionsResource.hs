{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-resource.html

module Stratosphere.ResourceProperties.LakeFormationPermissionsResource where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.LakeFormationPermissionsDatabaseResource
import Stratosphere.ResourceProperties.LakeFormationPermissionsTableResource

-- | Full data type definition for LakeFormationPermissionsResource. See
-- 'lakeFormationPermissionsResource' for a more convenient constructor.
data LakeFormationPermissionsResource =
  LakeFormationPermissionsResource
  { _lakeFormationPermissionsResourceDatabaseResource :: Maybe LakeFormationPermissionsDatabaseResource
  , _lakeFormationPermissionsResourceTableResource :: Maybe LakeFormationPermissionsTableResource
  } deriving (Show, Eq)

instance ToJSON LakeFormationPermissionsResource where
  toJSON LakeFormationPermissionsResource{..} =
    object $
    catMaybes
    [ fmap (("DatabaseResource",) . toJSON) _lakeFormationPermissionsResourceDatabaseResource
    , fmap (("TableResource",) . toJSON) _lakeFormationPermissionsResourceTableResource
    ]

-- | Constructor for 'LakeFormationPermissionsResource' containing required
-- fields as arguments.
lakeFormationPermissionsResource
  :: LakeFormationPermissionsResource
lakeFormationPermissionsResource  =
  LakeFormationPermissionsResource
  { _lakeFormationPermissionsResourceDatabaseResource = Nothing
  , _lakeFormationPermissionsResourceTableResource = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-resource.html#cfn-lakeformation-permissions-resource-databaseresource
lfprDatabaseResource :: Lens' LakeFormationPermissionsResource (Maybe LakeFormationPermissionsDatabaseResource)
lfprDatabaseResource = lens _lakeFormationPermissionsResourceDatabaseResource (\s a -> s { _lakeFormationPermissionsResourceDatabaseResource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-resource.html#cfn-lakeformation-permissions-resource-tableresource
lfprTableResource :: Lens' LakeFormationPermissionsResource (Maybe LakeFormationPermissionsTableResource)
lfprTableResource = lens _lakeFormationPermissionsResourceTableResource (\s a -> s { _lakeFormationPermissionsResourceTableResource = a })
