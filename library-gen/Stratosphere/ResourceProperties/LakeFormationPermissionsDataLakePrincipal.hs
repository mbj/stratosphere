{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-datalakeprincipal.html

module Stratosphere.ResourceProperties.LakeFormationPermissionsDataLakePrincipal where

import Stratosphere.ResourceImports


-- | Full data type definition for LakeFormationPermissionsDataLakePrincipal.
-- See 'lakeFormationPermissionsDataLakePrincipal' for a more convenient
-- constructor.
data LakeFormationPermissionsDataLakePrincipal =
  LakeFormationPermissionsDataLakePrincipal
  { _lakeFormationPermissionsDataLakePrincipalDataLakePrincipalIdentifier :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON LakeFormationPermissionsDataLakePrincipal where
  toJSON LakeFormationPermissionsDataLakePrincipal{..} =
    object $
    catMaybes
    [ fmap (("DataLakePrincipalIdentifier",) . toJSON) _lakeFormationPermissionsDataLakePrincipalDataLakePrincipalIdentifier
    ]

-- | Constructor for 'LakeFormationPermissionsDataLakePrincipal' containing
-- required fields as arguments.
lakeFormationPermissionsDataLakePrincipal
  :: LakeFormationPermissionsDataLakePrincipal
lakeFormationPermissionsDataLakePrincipal  =
  LakeFormationPermissionsDataLakePrincipal
  { _lakeFormationPermissionsDataLakePrincipalDataLakePrincipalIdentifier = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-datalakeprincipal.html#cfn-lakeformation-permissions-datalakeprincipal-datalakeprincipalidentifier
lfpdlpDataLakePrincipalIdentifier :: Lens' LakeFormationPermissionsDataLakePrincipal (Maybe (Val Text))
lfpdlpDataLakePrincipalIdentifier = lens _lakeFormationPermissionsDataLakePrincipalDataLakePrincipalIdentifier (\s a -> s { _lakeFormationPermissionsDataLakePrincipalDataLakePrincipalIdentifier = a })
