
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-columnwildcard.html

module Stratosphere.ResourceProperties.LakeFormationPermissionsColumnWildcard where

import Stratosphere.ResourceImports


-- | Full data type definition for LakeFormationPermissionsColumnWildcard. See
-- 'lakeFormationPermissionsColumnWildcard' for a more convenient
-- constructor.
data LakeFormationPermissionsColumnWildcard =
  LakeFormationPermissionsColumnWildcard
  { _lakeFormationPermissionsColumnWildcardExcludedColumnNames :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON LakeFormationPermissionsColumnWildcard where
  toJSON LakeFormationPermissionsColumnWildcard{..} =
    object $
    catMaybes
    [ fmap (("ExcludedColumnNames",) . toJSON) _lakeFormationPermissionsColumnWildcardExcludedColumnNames
    ]

-- | Constructor for 'LakeFormationPermissionsColumnWildcard' containing
-- required fields as arguments.
lakeFormationPermissionsColumnWildcard
  :: LakeFormationPermissionsColumnWildcard
lakeFormationPermissionsColumnWildcard  =
  LakeFormationPermissionsColumnWildcard
  { _lakeFormationPermissionsColumnWildcardExcludedColumnNames = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-columnwildcard.html#cfn-lakeformation-permissions-columnwildcard-excludedcolumnnames
lfpcwExcludedColumnNames :: Lens' LakeFormationPermissionsColumnWildcard (Maybe (ValList Text))
lfpcwExcludedColumnNames = lens _lakeFormationPermissionsColumnWildcardExcludedColumnNames (\s a -> s { _lakeFormationPermissionsColumnWildcardExcludedColumnNames = a })
