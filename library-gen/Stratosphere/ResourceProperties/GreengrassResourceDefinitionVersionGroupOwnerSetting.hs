
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-groupownersetting.html

module Stratosphere.ResourceProperties.GreengrassResourceDefinitionVersionGroupOwnerSetting where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- GreengrassResourceDefinitionVersionGroupOwnerSetting. See
-- 'greengrassResourceDefinitionVersionGroupOwnerSetting' for a more
-- convenient constructor.
data GreengrassResourceDefinitionVersionGroupOwnerSetting =
  GreengrassResourceDefinitionVersionGroupOwnerSetting
  { _greengrassResourceDefinitionVersionGroupOwnerSettingAutoAddGroupOwner :: Val Bool
  , _greengrassResourceDefinitionVersionGroupOwnerSettingGroupOwner :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GreengrassResourceDefinitionVersionGroupOwnerSetting where
  toJSON GreengrassResourceDefinitionVersionGroupOwnerSetting{..} =
    object $
    catMaybes
    [ (Just . ("AutoAddGroupOwner",) . toJSON) _greengrassResourceDefinitionVersionGroupOwnerSettingAutoAddGroupOwner
    , fmap (("GroupOwner",) . toJSON) _greengrassResourceDefinitionVersionGroupOwnerSettingGroupOwner
    ]

-- | Constructor for 'GreengrassResourceDefinitionVersionGroupOwnerSetting'
-- containing required fields as arguments.
greengrassResourceDefinitionVersionGroupOwnerSetting
  :: Val Bool -- ^ 'grdvgosAutoAddGroupOwner'
  -> GreengrassResourceDefinitionVersionGroupOwnerSetting
greengrassResourceDefinitionVersionGroupOwnerSetting autoAddGroupOwnerarg =
  GreengrassResourceDefinitionVersionGroupOwnerSetting
  { _greengrassResourceDefinitionVersionGroupOwnerSettingAutoAddGroupOwner = autoAddGroupOwnerarg
  , _greengrassResourceDefinitionVersionGroupOwnerSettingGroupOwner = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-groupownersetting.html#cfn-greengrass-resourcedefinitionversion-groupownersetting-autoaddgroupowner
grdvgosAutoAddGroupOwner :: Lens' GreengrassResourceDefinitionVersionGroupOwnerSetting (Val Bool)
grdvgosAutoAddGroupOwner = lens _greengrassResourceDefinitionVersionGroupOwnerSettingAutoAddGroupOwner (\s a -> s { _greengrassResourceDefinitionVersionGroupOwnerSettingAutoAddGroupOwner = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-groupownersetting.html#cfn-greengrass-resourcedefinitionversion-groupownersetting-groupowner
grdvgosGroupOwner :: Lens' GreengrassResourceDefinitionVersionGroupOwnerSetting (Maybe (Val Text))
grdvgosGroupOwner = lens _greengrassResourceDefinitionVersionGroupOwnerSettingGroupOwner (\s a -> s { _greengrassResourceDefinitionVersionGroupOwnerSettingGroupOwner = a })
