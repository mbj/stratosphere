{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-datalocationresource.html

module Stratosphere.ResourceProperties.LakeFormationPermissionsDataLocationResource where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- LakeFormationPermissionsDataLocationResource. See
-- 'lakeFormationPermissionsDataLocationResource' for a more convenient
-- constructor.
data LakeFormationPermissionsDataLocationResource =
  LakeFormationPermissionsDataLocationResource
  { _lakeFormationPermissionsDataLocationResourceCatalogId :: Maybe (Val Text)
  , _lakeFormationPermissionsDataLocationResourceS3Resource :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON LakeFormationPermissionsDataLocationResource where
  toJSON LakeFormationPermissionsDataLocationResource{..} =
    object $
    catMaybes
    [ fmap (("CatalogId",) . toJSON) _lakeFormationPermissionsDataLocationResourceCatalogId
    , fmap (("S3Resource",) . toJSON) _lakeFormationPermissionsDataLocationResourceS3Resource
    ]

-- | Constructor for 'LakeFormationPermissionsDataLocationResource' containing
-- required fields as arguments.
lakeFormationPermissionsDataLocationResource
  :: LakeFormationPermissionsDataLocationResource
lakeFormationPermissionsDataLocationResource  =
  LakeFormationPermissionsDataLocationResource
  { _lakeFormationPermissionsDataLocationResourceCatalogId = Nothing
  , _lakeFormationPermissionsDataLocationResourceS3Resource = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-datalocationresource.html#cfn-lakeformation-permissions-datalocationresource-catalogid
lfpdlrCatalogId :: Lens' LakeFormationPermissionsDataLocationResource (Maybe (Val Text))
lfpdlrCatalogId = lens _lakeFormationPermissionsDataLocationResourceCatalogId (\s a -> s { _lakeFormationPermissionsDataLocationResourceCatalogId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-datalocationresource.html#cfn-lakeformation-permissions-datalocationresource-s3resource
lfpdlrS3Resource :: Lens' LakeFormationPermissionsDataLocationResource (Maybe (Val Text))
lfpdlrS3Resource = lens _lakeFormationPermissionsDataLocationResourceS3Resource (\s a -> s { _lakeFormationPermissionsDataLocationResourceS3Resource = a })
