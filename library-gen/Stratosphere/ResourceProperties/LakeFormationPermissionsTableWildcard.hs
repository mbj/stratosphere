{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewildcard.html

module Stratosphere.ResourceProperties.LakeFormationPermissionsTableWildcard where

import Stratosphere.ResourceImports


-- | Full data type definition for LakeFormationPermissionsTableWildcard. See
-- 'lakeFormationPermissionsTableWildcard' for a more convenient
-- constructor.
data LakeFormationPermissionsTableWildcard =
  LakeFormationPermissionsTableWildcard
  {
  } deriving (Show, Eq)

instance ToJSON LakeFormationPermissionsTableWildcard where
  toJSON _ = toJSON ([] :: [String])

-- | Constructor for 'LakeFormationPermissionsTableWildcard' containing
-- required fields as arguments.
lakeFormationPermissionsTableWildcard
  :: LakeFormationPermissionsTableWildcard
lakeFormationPermissionsTableWildcard  =
  LakeFormationPermissionsTableWildcard
  {
  }
