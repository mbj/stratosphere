{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-databaseresource.html

module Stratosphere.ResourceProperties.LakeFormationPermissionsDatabaseResource where

import Stratosphere.ResourceImports


-- | Full data type definition for LakeFormationPermissionsDatabaseResource.
-- See 'lakeFormationPermissionsDatabaseResource' for a more convenient
-- constructor.
data LakeFormationPermissionsDatabaseResource =
  LakeFormationPermissionsDatabaseResource
  { _lakeFormationPermissionsDatabaseResourceName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON LakeFormationPermissionsDatabaseResource where
  toJSON LakeFormationPermissionsDatabaseResource{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _lakeFormationPermissionsDatabaseResourceName
    ]

-- | Constructor for 'LakeFormationPermissionsDatabaseResource' containing
-- required fields as arguments.
lakeFormationPermissionsDatabaseResource
  :: LakeFormationPermissionsDatabaseResource
lakeFormationPermissionsDatabaseResource  =
  LakeFormationPermissionsDatabaseResource
  { _lakeFormationPermissionsDatabaseResourceName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-databaseresource.html#cfn-lakeformation-permissions-databaseresource-name
lfpdrName :: Lens' LakeFormationPermissionsDatabaseResource (Maybe (Val Text))
lfpdrName = lens _lakeFormationPermissionsDatabaseResourceName (\s a -> s { _lakeFormationPermissionsDatabaseResourceName = a })
