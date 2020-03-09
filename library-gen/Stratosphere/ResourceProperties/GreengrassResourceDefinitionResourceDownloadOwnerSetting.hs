{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedownloadownersetting.html

module Stratosphere.ResourceProperties.GreengrassResourceDefinitionResourceDownloadOwnerSetting where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- GreengrassResourceDefinitionResourceDownloadOwnerSetting. See
-- 'greengrassResourceDefinitionResourceDownloadOwnerSetting' for a more
-- convenient constructor.
data GreengrassResourceDefinitionResourceDownloadOwnerSetting =
  GreengrassResourceDefinitionResourceDownloadOwnerSetting
  { _greengrassResourceDefinitionResourceDownloadOwnerSettingGroupOwner :: Val Text
  , _greengrassResourceDefinitionResourceDownloadOwnerSettingGroupPermission :: Val Text
  } deriving (Show, Eq)

instance ToJSON GreengrassResourceDefinitionResourceDownloadOwnerSetting where
  toJSON GreengrassResourceDefinitionResourceDownloadOwnerSetting{..} =
    object $
    catMaybes
    [ (Just . ("GroupOwner",) . toJSON) _greengrassResourceDefinitionResourceDownloadOwnerSettingGroupOwner
    , (Just . ("GroupPermission",) . toJSON) _greengrassResourceDefinitionResourceDownloadOwnerSettingGroupPermission
    ]

-- | Constructor for
-- 'GreengrassResourceDefinitionResourceDownloadOwnerSetting' containing
-- required fields as arguments.
greengrassResourceDefinitionResourceDownloadOwnerSetting
  :: Val Text -- ^ 'grdrdosGroupOwner'
  -> Val Text -- ^ 'grdrdosGroupPermission'
  -> GreengrassResourceDefinitionResourceDownloadOwnerSetting
greengrassResourceDefinitionResourceDownloadOwnerSetting groupOwnerarg groupPermissionarg =
  GreengrassResourceDefinitionResourceDownloadOwnerSetting
  { _greengrassResourceDefinitionResourceDownloadOwnerSettingGroupOwner = groupOwnerarg
  , _greengrassResourceDefinitionResourceDownloadOwnerSettingGroupPermission = groupPermissionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedownloadownersetting.html#cfn-greengrass-resourcedefinition-resourcedownloadownersetting-groupowner
grdrdosGroupOwner :: Lens' GreengrassResourceDefinitionResourceDownloadOwnerSetting (Val Text)
grdrdosGroupOwner = lens _greengrassResourceDefinitionResourceDownloadOwnerSettingGroupOwner (\s a -> s { _greengrassResourceDefinitionResourceDownloadOwnerSettingGroupOwner = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedownloadownersetting.html#cfn-greengrass-resourcedefinition-resourcedownloadownersetting-grouppermission
grdrdosGroupPermission :: Lens' GreengrassResourceDefinitionResourceDownloadOwnerSetting (Val Text)
grdrdosGroupPermission = lens _greengrassResourceDefinitionResourceDownloadOwnerSettingGroupPermission (\s a -> s { _greengrassResourceDefinitionResourceDownloadOwnerSettingGroupPermission = a })
