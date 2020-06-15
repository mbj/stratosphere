{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-creationinfo.html

module Stratosphere.ResourceProperties.EFSAccessPointCreationInfo where

import Stratosphere.ResourceImports


-- | Full data type definition for EFSAccessPointCreationInfo. See
-- 'efsAccessPointCreationInfo' for a more convenient constructor.
data EFSAccessPointCreationInfo =
  EFSAccessPointCreationInfo
  { _eFSAccessPointCreationInfoOwnerGid :: Val Text
  , _eFSAccessPointCreationInfoOwnerUid :: Val Text
  , _eFSAccessPointCreationInfoPermissions :: Val Text
  } deriving (Show, Eq)

instance ToJSON EFSAccessPointCreationInfo where
  toJSON EFSAccessPointCreationInfo{..} =
    object $
    catMaybes
    [ (Just . ("OwnerGid",) . toJSON) _eFSAccessPointCreationInfoOwnerGid
    , (Just . ("OwnerUid",) . toJSON) _eFSAccessPointCreationInfoOwnerUid
    , (Just . ("Permissions",) . toJSON) _eFSAccessPointCreationInfoPermissions
    ]

-- | Constructor for 'EFSAccessPointCreationInfo' containing required fields
-- as arguments.
efsAccessPointCreationInfo
  :: Val Text -- ^ 'efsapciOwnerGid'
  -> Val Text -- ^ 'efsapciOwnerUid'
  -> Val Text -- ^ 'efsapciPermissions'
  -> EFSAccessPointCreationInfo
efsAccessPointCreationInfo ownerGidarg ownerUidarg permissionsarg =
  EFSAccessPointCreationInfo
  { _eFSAccessPointCreationInfoOwnerGid = ownerGidarg
  , _eFSAccessPointCreationInfoOwnerUid = ownerUidarg
  , _eFSAccessPointCreationInfoPermissions = permissionsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-creationinfo.html#cfn-efs-accesspoint-creationinfo-ownergid
efsapciOwnerGid :: Lens' EFSAccessPointCreationInfo (Val Text)
efsapciOwnerGid = lens _eFSAccessPointCreationInfoOwnerGid (\s a -> s { _eFSAccessPointCreationInfoOwnerGid = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-creationinfo.html#cfn-efs-accesspoint-creationinfo-owneruid
efsapciOwnerUid :: Lens' EFSAccessPointCreationInfo (Val Text)
efsapciOwnerUid = lens _eFSAccessPointCreationInfoOwnerUid (\s a -> s { _eFSAccessPointCreationInfoOwnerUid = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-creationinfo.html#cfn-efs-accesspoint-creationinfo-permissions
efsapciPermissions :: Lens' EFSAccessPointCreationInfo (Val Text)
efsapciPermissions = lens _eFSAccessPointCreationInfoPermissions (\s a -> s { _eFSAccessPointCreationInfoPermissions = a })
