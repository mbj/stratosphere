
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-application-tags.html

module Stratosphere.ResourceProperties.AppConfigApplicationTags where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for AppConfigApplicationTags. See
-- 'appConfigApplicationTags' for a more convenient constructor.
data AppConfigApplicationTags =
  AppConfigApplicationTags
  { _appConfigApplicationTagsKey :: Maybe (Val Text)
  , _appConfigApplicationTagsValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppConfigApplicationTags where
  toJSON AppConfigApplicationTags{..} =
    object $
    catMaybes
    [ fmap (("Key",) . toJSON) _appConfigApplicationTagsKey
    , fmap (("Value",) . toJSON) _appConfigApplicationTagsValue
    ]

-- | Constructor for 'AppConfigApplicationTags' containing required fields as
-- arguments.
appConfigApplicationTags
  :: AppConfigApplicationTags
appConfigApplicationTags  =
  AppConfigApplicationTags
  { _appConfigApplicationTagsKey = Nothing
  , _appConfigApplicationTagsValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-application-tags.html#cfn-appconfig-application-tags-key
acatKey :: Lens' AppConfigApplicationTags (Maybe (Val Text))
acatKey = lens _appConfigApplicationTagsKey (\s a -> s { _appConfigApplicationTagsKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-application-tags.html#cfn-appconfig-application-tags-value
acatValue :: Lens' AppConfigApplicationTags (Maybe (Val Text))
acatValue = lens _appConfigApplicationTagsValue (\s a -> s { _appConfigApplicationTagsValue = a })
