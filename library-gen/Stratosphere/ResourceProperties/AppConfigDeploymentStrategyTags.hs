
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-deploymentstrategy-tags.html

module Stratosphere.ResourceProperties.AppConfigDeploymentStrategyTags where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for AppConfigDeploymentStrategyTags. See
-- 'appConfigDeploymentStrategyTags' for a more convenient constructor.
data AppConfigDeploymentStrategyTags =
  AppConfigDeploymentStrategyTags
  { _appConfigDeploymentStrategyTagsKey :: Maybe (Val Text)
  , _appConfigDeploymentStrategyTagsValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppConfigDeploymentStrategyTags where
  toJSON AppConfigDeploymentStrategyTags{..} =
    object $
    catMaybes
    [ fmap (("Key",) . toJSON) _appConfigDeploymentStrategyTagsKey
    , fmap (("Value",) . toJSON) _appConfigDeploymentStrategyTagsValue
    ]

-- | Constructor for 'AppConfigDeploymentStrategyTags' containing required
-- fields as arguments.
appConfigDeploymentStrategyTags
  :: AppConfigDeploymentStrategyTags
appConfigDeploymentStrategyTags  =
  AppConfigDeploymentStrategyTags
  { _appConfigDeploymentStrategyTagsKey = Nothing
  , _appConfigDeploymentStrategyTagsValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-deploymentstrategy-tags.html#cfn-appconfig-deploymentstrategy-tags-key
acdstKey :: Lens' AppConfigDeploymentStrategyTags (Maybe (Val Text))
acdstKey = lens _appConfigDeploymentStrategyTagsKey (\s a -> s { _appConfigDeploymentStrategyTagsKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-deploymentstrategy-tags.html#cfn-appconfig-deploymentstrategy-tags-value
acdstValue :: Lens' AppConfigDeploymentStrategyTags (Maybe (Val Text))
acdstValue = lens _appConfigDeploymentStrategyTagsValue (\s a -> s { _appConfigDeploymentStrategyTagsValue = a })
