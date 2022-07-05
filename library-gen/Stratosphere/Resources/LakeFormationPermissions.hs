{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-permissions.html

module Stratosphere.Resources.LakeFormationPermissions where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.LakeFormationPermissionsDataLakePrincipal
import Stratosphere.ResourceProperties.LakeFormationPermissionsResource

-- | Full data type definition for LakeFormationPermissions. See
-- 'lakeFormationPermissions' for a more convenient constructor.
data LakeFormationPermissions =
  LakeFormationPermissions
  { _lakeFormationPermissionsDataLakePrincipal :: LakeFormationPermissionsDataLakePrincipal
  , _lakeFormationPermissionsPermissions :: Maybe (ValList Text)
  , _lakeFormationPermissionsPermissionsWithGrantOption :: Maybe (ValList Text)
  , _lakeFormationPermissionsResource :: LakeFormationPermissionsResource
  } deriving (Show, Eq)

instance ToResourceProperties LakeFormationPermissions where
  toResourceProperties LakeFormationPermissions{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::LakeFormation::Permissions"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("DataLakePrincipal",) . toJSON) _lakeFormationPermissionsDataLakePrincipal
        , fmap (("Permissions",) . toJSON) _lakeFormationPermissionsPermissions
        , fmap (("PermissionsWithGrantOption",) . toJSON) _lakeFormationPermissionsPermissionsWithGrantOption
        , (Just . ("Resource",) . toJSON) _lakeFormationPermissionsResource
        ]
    }

-- | Constructor for 'LakeFormationPermissions' containing required fields as
-- arguments.
lakeFormationPermissions
  :: LakeFormationPermissionsDataLakePrincipal -- ^ 'lfpDataLakePrincipal'
  -> LakeFormationPermissionsResource -- ^ 'lfpResource'
  -> LakeFormationPermissions
lakeFormationPermissions dataLakePrincipalarg resourcearg =
  LakeFormationPermissions
  { _lakeFormationPermissionsDataLakePrincipal = dataLakePrincipalarg
  , _lakeFormationPermissionsPermissions = Nothing
  , _lakeFormationPermissionsPermissionsWithGrantOption = Nothing
  , _lakeFormationPermissionsResource = resourcearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-permissions.html#cfn-lakeformation-permissions-datalakeprincipal
lfpDataLakePrincipal :: Lens' LakeFormationPermissions LakeFormationPermissionsDataLakePrincipal
lfpDataLakePrincipal = lens _lakeFormationPermissionsDataLakePrincipal (\s a -> s { _lakeFormationPermissionsDataLakePrincipal = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-permissions.html#cfn-lakeformation-permissions-permissions
lfpPermissions :: Lens' LakeFormationPermissions (Maybe (ValList Text))
lfpPermissions = lens _lakeFormationPermissionsPermissions (\s a -> s { _lakeFormationPermissionsPermissions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-permissions.html#cfn-lakeformation-permissions-permissionswithgrantoption
lfpPermissionsWithGrantOption :: Lens' LakeFormationPermissions (Maybe (ValList Text))
lfpPermissionsWithGrantOption = lens _lakeFormationPermissionsPermissionsWithGrantOption (\s a -> s { _lakeFormationPermissionsPermissionsWithGrantOption = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-permissions.html#cfn-lakeformation-permissions-resource
lfpResource :: Lens' LakeFormationPermissions LakeFormationPermissionsResource
lfpResource = lens _lakeFormationPermissionsResource (\s a -> s { _lakeFormationPermissionsResource = a })
