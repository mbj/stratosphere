{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveuserlist.html

module Stratosphere.ResourceProperties.KendraDataSourceOneDriveUserList where

import Stratosphere.ResourceImports


-- | Full data type definition for KendraDataSourceOneDriveUserList. See
-- 'kendraDataSourceOneDriveUserList' for a more convenient constructor.
data KendraDataSourceOneDriveUserList =
  KendraDataSourceOneDriveUserList
  { _kendraDataSourceOneDriveUserListOneDriveUserList :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceOneDriveUserList where
  toJSON KendraDataSourceOneDriveUserList{..} =
    object $
    catMaybes
    [ fmap (("OneDriveUserList",) . toJSON) _kendraDataSourceOneDriveUserListOneDriveUserList
    ]

-- | Constructor for 'KendraDataSourceOneDriveUserList' containing required
-- fields as arguments.
kendraDataSourceOneDriveUserList
  :: KendraDataSourceOneDriveUserList
kendraDataSourceOneDriveUserList  =
  KendraDataSourceOneDriveUserList
  { _kendraDataSourceOneDriveUserListOneDriveUserList = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveuserlist.html#cfn-kendra-datasource-onedriveuserlist-onedriveuserlist
kdsodulOneDriveUserList :: Lens' KendraDataSourceOneDriveUserList (Maybe (ValList Text))
kdsodulOneDriveUserList = lens _kendraDataSourceOneDriveUserListOneDriveUserList (\s a -> s { _kendraDataSourceOneDriveUserListOneDriveUserList = a })
