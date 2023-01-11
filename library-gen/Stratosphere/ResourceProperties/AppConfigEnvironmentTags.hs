
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-environment-tags.html

module Stratosphere.ResourceProperties.AppConfigEnvironmentTags where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for AppConfigEnvironmentTags. See
-- 'appConfigEnvironmentTags' for a more convenient constructor.
data AppConfigEnvironmentTags =
  AppConfigEnvironmentTags
  { _appConfigEnvironmentTagsKey :: Maybe (Val Text)
  , _appConfigEnvironmentTagsValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppConfigEnvironmentTags where
  toJSON AppConfigEnvironmentTags{..} =
    object $
    catMaybes
    [ fmap (("Key",) . toJSON) _appConfigEnvironmentTagsKey
    , fmap (("Value",) . toJSON) _appConfigEnvironmentTagsValue
    ]

-- | Constructor for 'AppConfigEnvironmentTags' containing required fields as
-- arguments.
appConfigEnvironmentTags
  :: AppConfigEnvironmentTags
appConfigEnvironmentTags  =
  AppConfigEnvironmentTags
  { _appConfigEnvironmentTagsKey = Nothing
  , _appConfigEnvironmentTagsValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-environment-tags.html#cfn-appconfig-environment-tags-key
acetKey :: Lens' AppConfigEnvironmentTags (Maybe (Val Text))
acetKey = lens _appConfigEnvironmentTagsKey (\s a -> s { _appConfigEnvironmentTagsKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-environment-tags.html#cfn-appconfig-environment-tags-value
acetValue :: Lens' AppConfigEnvironmentTags (Maybe (Val Text))
acetValue = lens _appConfigEnvironmentTagsValue (\s a -> s { _appConfigEnvironmentTagsValue = a })
