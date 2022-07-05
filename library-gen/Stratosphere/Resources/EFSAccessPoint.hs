{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-accesspoint.html

module Stratosphere.Resources.EFSAccessPoint where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EFSAccessPointAccessPointTag
import Stratosphere.ResourceProperties.EFSAccessPointPosixUser
import Stratosphere.ResourceProperties.EFSAccessPointRootDirectory

-- | Full data type definition for EFSAccessPoint. See 'efsAccessPoint' for a
-- more convenient constructor.
data EFSAccessPoint =
  EFSAccessPoint
  { _eFSAccessPointAccessPointTags :: Maybe [EFSAccessPointAccessPointTag]
  , _eFSAccessPointClientToken :: Maybe (Val Text)
  , _eFSAccessPointFileSystemId :: Val Text
  , _eFSAccessPointPosixUser :: Maybe EFSAccessPointPosixUser
  , _eFSAccessPointRootDirectory :: Maybe EFSAccessPointRootDirectory
  } deriving (Show, Eq)

instance ToResourceProperties EFSAccessPoint where
  toResourceProperties EFSAccessPoint{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EFS::AccessPoint"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AccessPointTags",) . toJSON) _eFSAccessPointAccessPointTags
        , fmap (("ClientToken",) . toJSON) _eFSAccessPointClientToken
        , (Just . ("FileSystemId",) . toJSON) _eFSAccessPointFileSystemId
        , fmap (("PosixUser",) . toJSON) _eFSAccessPointPosixUser
        , fmap (("RootDirectory",) . toJSON) _eFSAccessPointRootDirectory
        ]
    }

-- | Constructor for 'EFSAccessPoint' containing required fields as arguments.
efsAccessPoint
  :: Val Text -- ^ 'efsapFileSystemId'
  -> EFSAccessPoint
efsAccessPoint fileSystemIdarg =
  EFSAccessPoint
  { _eFSAccessPointAccessPointTags = Nothing
  , _eFSAccessPointClientToken = Nothing
  , _eFSAccessPointFileSystemId = fileSystemIdarg
  , _eFSAccessPointPosixUser = Nothing
  , _eFSAccessPointRootDirectory = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-accesspoint.html#cfn-efs-accesspoint-accesspointtags
efsapAccessPointTags :: Lens' EFSAccessPoint (Maybe [EFSAccessPointAccessPointTag])
efsapAccessPointTags = lens _eFSAccessPointAccessPointTags (\s a -> s { _eFSAccessPointAccessPointTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-accesspoint.html#cfn-efs-accesspoint-clienttoken
efsapClientToken :: Lens' EFSAccessPoint (Maybe (Val Text))
efsapClientToken = lens _eFSAccessPointClientToken (\s a -> s { _eFSAccessPointClientToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-accesspoint.html#cfn-efs-accesspoint-filesystemid
efsapFileSystemId :: Lens' EFSAccessPoint (Val Text)
efsapFileSystemId = lens _eFSAccessPointFileSystemId (\s a -> s { _eFSAccessPointFileSystemId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-accesspoint.html#cfn-efs-accesspoint-posixuser
efsapPosixUser :: Lens' EFSAccessPoint (Maybe EFSAccessPointPosixUser)
efsapPosixUser = lens _eFSAccessPointPosixUser (\s a -> s { _eFSAccessPointPosixUser = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-efs-accesspoint.html#cfn-efs-accesspoint-rootdirectory
efsapRootDirectory :: Lens' EFSAccessPoint (Maybe EFSAccessPointRootDirectory)
efsapRootDirectory = lens _eFSAccessPointRootDirectory (\s a -> s { _eFSAccessPointRootDirectory = a })
