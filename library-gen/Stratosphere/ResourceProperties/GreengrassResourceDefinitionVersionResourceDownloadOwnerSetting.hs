{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedownloadownersetting.html

module Stratosphere.ResourceProperties.GreengrassResourceDefinitionVersionResourceDownloadOwnerSetting where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- GreengrassResourceDefinitionVersionResourceDownloadOwnerSetting. See
-- 'greengrassResourceDefinitionVersionResourceDownloadOwnerSetting' for a
-- more convenient constructor.
data GreengrassResourceDefinitionVersionResourceDownloadOwnerSetting =
  GreengrassResourceDefinitionVersionResourceDownloadOwnerSetting
  { _greengrassResourceDefinitionVersionResourceDownloadOwnerSettingGroupOwner :: Val Text
  , _greengrassResourceDefinitionVersionResourceDownloadOwnerSettingGroupPermission :: Val Text
  } deriving (Show, Eq)

instance ToJSON GreengrassResourceDefinitionVersionResourceDownloadOwnerSetting where
  toJSON GreengrassResourceDefinitionVersionResourceDownloadOwnerSetting{..} =
    object $
    catMaybes
    [ (Just . ("GroupOwner",) . toJSON) _greengrassResourceDefinitionVersionResourceDownloadOwnerSettingGroupOwner
    , (Just . ("GroupPermission",) . toJSON) _greengrassResourceDefinitionVersionResourceDownloadOwnerSettingGroupPermission
    ]

-- | Constructor for
-- 'GreengrassResourceDefinitionVersionResourceDownloadOwnerSetting'
-- containing required fields as arguments.
greengrassResourceDefinitionVersionResourceDownloadOwnerSetting
  :: Val Text -- ^ 'grdvrdosGroupOwner'
  -> Val Text -- ^ 'grdvrdosGroupPermission'
  -> GreengrassResourceDefinitionVersionResourceDownloadOwnerSetting
greengrassResourceDefinitionVersionResourceDownloadOwnerSetting groupOwnerarg groupPermissionarg =
  GreengrassResourceDefinitionVersionResourceDownloadOwnerSetting
  { _greengrassResourceDefinitionVersionResourceDownloadOwnerSettingGroupOwner = groupOwnerarg
  , _greengrassResourceDefinitionVersionResourceDownloadOwnerSettingGroupPermission = groupPermissionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedownloadownersetting.html#cfn-greengrass-resourcedefinitionversion-resourcedownloadownersetting-groupowner
grdvrdosGroupOwner :: Lens' GreengrassResourceDefinitionVersionResourceDownloadOwnerSetting (Val Text)
grdvrdosGroupOwner = lens _greengrassResourceDefinitionVersionResourceDownloadOwnerSettingGroupOwner (\s a -> s { _greengrassResourceDefinitionVersionResourceDownloadOwnerSettingGroupOwner = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedownloadownersetting.html#cfn-greengrass-resourcedefinitionversion-resourcedownloadownersetting-grouppermission
grdvrdosGroupPermission :: Lens' GreengrassResourceDefinitionVersionResourceDownloadOwnerSetting (Val Text)
grdvrdosGroupPermission = lens _greengrassResourceDefinitionVersionResourceDownloadOwnerSettingGroupPermission (\s a -> s { _greengrassResourceDefinitionVersionResourceDownloadOwnerSettingGroupPermission = a })
