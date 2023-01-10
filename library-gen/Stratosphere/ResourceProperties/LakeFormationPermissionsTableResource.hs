
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tableresource.html

module Stratosphere.ResourceProperties.LakeFormationPermissionsTableResource where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for LakeFormationPermissionsTableResource. See
-- 'lakeFormationPermissionsTableResource' for a more convenient
-- constructor.
data LakeFormationPermissionsTableResource =
  LakeFormationPermissionsTableResource
  { _lakeFormationPermissionsTableResourceDatabaseName :: Maybe (Val Text)
  , _lakeFormationPermissionsTableResourceName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON LakeFormationPermissionsTableResource where
  toJSON LakeFormationPermissionsTableResource{..} =
    object $
    catMaybes
    [ fmap (("DatabaseName",) . toJSON) _lakeFormationPermissionsTableResourceDatabaseName
    , fmap (("Name",) . toJSON) _lakeFormationPermissionsTableResourceName
    ]

-- | Constructor for 'LakeFormationPermissionsTableResource' containing
-- required fields as arguments.
lakeFormationPermissionsTableResource
  :: LakeFormationPermissionsTableResource
lakeFormationPermissionsTableResource  =
  LakeFormationPermissionsTableResource
  { _lakeFormationPermissionsTableResourceDatabaseName = Nothing
  , _lakeFormationPermissionsTableResourceName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tableresource.html#cfn-lakeformation-permissions-tableresource-databasename
lfptrDatabaseName :: Lens' LakeFormationPermissionsTableResource (Maybe (Val Text))
lfptrDatabaseName = lens _lakeFormationPermissionsTableResourceDatabaseName (\s a -> s { _lakeFormationPermissionsTableResourceDatabaseName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tableresource.html#cfn-lakeformation-permissions-tableresource-name
lfptrName :: Lens' LakeFormationPermissionsTableResource (Maybe (Val Text))
lfptrName = lens _lakeFormationPermissionsTableResourceName (\s a -> s { _lakeFormationPermissionsTableResourceName = a })
