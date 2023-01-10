
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-posixuser.html

module Stratosphere.ResourceProperties.EFSAccessPointPosixUser where

import Stratosphere.ResourceImports


-- | Full data type definition for EFSAccessPointPosixUser. See
-- 'efsAccessPointPosixUser' for a more convenient constructor.
data EFSAccessPointPosixUser =
  EFSAccessPointPosixUser
  { _eFSAccessPointPosixUserGid :: Val Text
  , _eFSAccessPointPosixUserSecondaryGids :: Maybe (ValList Text)
  , _eFSAccessPointPosixUserUid :: Val Text
  } deriving (Show, Eq)

instance ToJSON EFSAccessPointPosixUser where
  toJSON EFSAccessPointPosixUser{..} =
    object $
    catMaybes
    [ (Just . ("Gid",) . toJSON) _eFSAccessPointPosixUserGid
    , fmap (("SecondaryGids",) . toJSON) _eFSAccessPointPosixUserSecondaryGids
    , (Just . ("Uid",) . toJSON) _eFSAccessPointPosixUserUid
    ]

-- | Constructor for 'EFSAccessPointPosixUser' containing required fields as
-- arguments.
efsAccessPointPosixUser
  :: Val Text -- ^ 'efsappuGid'
  -> Val Text -- ^ 'efsappuUid'
  -> EFSAccessPointPosixUser
efsAccessPointPosixUser gidarg uidarg =
  EFSAccessPointPosixUser
  { _eFSAccessPointPosixUserGid = gidarg
  , _eFSAccessPointPosixUserSecondaryGids = Nothing
  , _eFSAccessPointPosixUserUid = uidarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-posixuser.html#cfn-efs-accesspoint-posixuser-gid
efsappuGid :: Lens' EFSAccessPointPosixUser (Val Text)
efsappuGid = lens _eFSAccessPointPosixUserGid (\s a -> s { _eFSAccessPointPosixUserGid = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-posixuser.html#cfn-efs-accesspoint-posixuser-secondarygids
efsappuSecondaryGids :: Lens' EFSAccessPointPosixUser (Maybe (ValList Text))
efsappuSecondaryGids = lens _eFSAccessPointPosixUserSecondaryGids (\s a -> s { _eFSAccessPointPosixUserSecondaryGids = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-posixuser.html#cfn-efs-accesspoint-posixuser-uid
efsappuUid :: Lens' EFSAccessPointPosixUser (Val Text)
efsappuUid = lens _eFSAccessPointPosixUserUid (\s a -> s { _eFSAccessPointPosixUserUid = a })
