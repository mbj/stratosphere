
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-groupownersetting.html

module Stratosphere.ResourceProperties.GreengrassResourceDefinitionGroupOwnerSetting where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- GreengrassResourceDefinitionGroupOwnerSetting. See
-- 'greengrassResourceDefinitionGroupOwnerSetting' for a more convenient
-- constructor.
data GreengrassResourceDefinitionGroupOwnerSetting =
  GreengrassResourceDefinitionGroupOwnerSetting
  { _greengrassResourceDefinitionGroupOwnerSettingAutoAddGroupOwner :: Val Bool
  , _greengrassResourceDefinitionGroupOwnerSettingGroupOwner :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GreengrassResourceDefinitionGroupOwnerSetting where
  toJSON GreengrassResourceDefinitionGroupOwnerSetting{..} =
    object $
    catMaybes
    [ (Just . ("AutoAddGroupOwner",) . toJSON) _greengrassResourceDefinitionGroupOwnerSettingAutoAddGroupOwner
    , fmap (("GroupOwner",) . toJSON) _greengrassResourceDefinitionGroupOwnerSettingGroupOwner
    ]

-- | Constructor for 'GreengrassResourceDefinitionGroupOwnerSetting'
-- containing required fields as arguments.
greengrassResourceDefinitionGroupOwnerSetting
  :: Val Bool -- ^ 'grdgosAutoAddGroupOwner'
  -> GreengrassResourceDefinitionGroupOwnerSetting
greengrassResourceDefinitionGroupOwnerSetting autoAddGroupOwnerarg =
  GreengrassResourceDefinitionGroupOwnerSetting
  { _greengrassResourceDefinitionGroupOwnerSettingAutoAddGroupOwner = autoAddGroupOwnerarg
  , _greengrassResourceDefinitionGroupOwnerSettingGroupOwner = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-groupownersetting.html#cfn-greengrass-resourcedefinition-groupownersetting-autoaddgroupowner
grdgosAutoAddGroupOwner :: Lens' GreengrassResourceDefinitionGroupOwnerSetting (Val Bool)
grdgosAutoAddGroupOwner = lens _greengrassResourceDefinitionGroupOwnerSettingAutoAddGroupOwner (\s a -> s { _greengrassResourceDefinitionGroupOwnerSettingAutoAddGroupOwner = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-groupownersetting.html#cfn-greengrass-resourcedefinition-groupownersetting-groupowner
grdgosGroupOwner :: Lens' GreengrassResourceDefinitionGroupOwnerSetting (Maybe (Val Text))
grdgosGroupOwner = lens _greengrassResourceDefinitionGroupOwnerSettingGroupOwner (\s a -> s { _greengrassResourceDefinitionGroupOwnerSettingGroupOwner = a })
