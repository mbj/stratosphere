
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-configurationprofile-tags.html

module Stratosphere.ResourceProperties.AppConfigConfigurationProfileTags where

import Stratosphere.ResourceImports


-- | Full data type definition for AppConfigConfigurationProfileTags. See
-- 'appConfigConfigurationProfileTags' for a more convenient constructor.
data AppConfigConfigurationProfileTags =
  AppConfigConfigurationProfileTags
  { _appConfigConfigurationProfileTagsKey :: Maybe (Val Text)
  , _appConfigConfigurationProfileTagsValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppConfigConfigurationProfileTags where
  toJSON AppConfigConfigurationProfileTags{..} =
    object $
    catMaybes
    [ fmap (("Key",) . toJSON) _appConfigConfigurationProfileTagsKey
    , fmap (("Value",) . toJSON) _appConfigConfigurationProfileTagsValue
    ]

-- | Constructor for 'AppConfigConfigurationProfileTags' containing required
-- fields as arguments.
appConfigConfigurationProfileTags
  :: AppConfigConfigurationProfileTags
appConfigConfigurationProfileTags  =
  AppConfigConfigurationProfileTags
  { _appConfigConfigurationProfileTagsKey = Nothing
  , _appConfigConfigurationProfileTagsValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-configurationprofile-tags.html#cfn-appconfig-configurationprofile-tags-key
accptKey :: Lens' AppConfigConfigurationProfileTags (Maybe (Val Text))
accptKey = lens _appConfigConfigurationProfileTagsKey (\s a -> s { _appConfigConfigurationProfileTagsKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-configurationprofile-tags.html#cfn-appconfig-configurationprofile-tags-value
accptValue :: Lens' AppConfigConfigurationProfileTags (Maybe (Val Text))
accptValue = lens _appConfigConfigurationProfileTagsValue (\s a -> s { _appConfigConfigurationProfileTagsValue = a })
