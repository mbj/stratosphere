{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveusers.html

module Stratosphere.ResourceProperties.KendraDataSourceOneDriveUsers where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraDataSourceOneDriveUserList
import Stratosphere.ResourceProperties.KendraDataSourceS3Path

-- | Full data type definition for KendraDataSourceOneDriveUsers. See
-- 'kendraDataSourceOneDriveUsers' for a more convenient constructor.
data KendraDataSourceOneDriveUsers =
  KendraDataSourceOneDriveUsers
  { _kendraDataSourceOneDriveUsersOneDriveUserList :: Maybe KendraDataSourceOneDriveUserList
  , _kendraDataSourceOneDriveUsersOneDriveUserS3Path :: Maybe KendraDataSourceS3Path
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceOneDriveUsers where
  toJSON KendraDataSourceOneDriveUsers{..} =
    object $
    catMaybes
    [ fmap (("OneDriveUserList",) . toJSON) _kendraDataSourceOneDriveUsersOneDriveUserList
    , fmap (("OneDriveUserS3Path",) . toJSON) _kendraDataSourceOneDriveUsersOneDriveUserS3Path
    ]

-- | Constructor for 'KendraDataSourceOneDriveUsers' containing required
-- fields as arguments.
kendraDataSourceOneDriveUsers
  :: KendraDataSourceOneDriveUsers
kendraDataSourceOneDriveUsers  =
  KendraDataSourceOneDriveUsers
  { _kendraDataSourceOneDriveUsersOneDriveUserList = Nothing
  , _kendraDataSourceOneDriveUsersOneDriveUserS3Path = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveusers.html#cfn-kendra-datasource-onedriveusers-onedriveuserlist
kdsoduOneDriveUserList :: Lens' KendraDataSourceOneDriveUsers (Maybe KendraDataSourceOneDriveUserList)
kdsoduOneDriveUserList = lens _kendraDataSourceOneDriveUsersOneDriveUserList (\s a -> s { _kendraDataSourceOneDriveUsersOneDriveUserList = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveusers.html#cfn-kendra-datasource-onedriveusers-onedriveusers3path
kdsoduOneDriveUserS3Path :: Lens' KendraDataSourceOneDriveUsers (Maybe KendraDataSourceS3Path)
kdsoduOneDriveUserS3Path = lens _kendraDataSourceOneDriveUsersOneDriveUserS3Path (\s a -> s { _kendraDataSourceOneDriveUsersOneDriveUserS3Path = a })
