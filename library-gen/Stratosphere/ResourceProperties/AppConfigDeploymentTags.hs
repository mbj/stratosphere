{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-deployment-tags.html

module Stratosphere.ResourceProperties.AppConfigDeploymentTags where

import Stratosphere.ResourceImports


-- | Full data type definition for AppConfigDeploymentTags. See
-- 'appConfigDeploymentTags' for a more convenient constructor.
data AppConfigDeploymentTags =
  AppConfigDeploymentTags
  { _appConfigDeploymentTagsKey :: Maybe (Val Text)
  , _appConfigDeploymentTagsValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppConfigDeploymentTags where
  toJSON AppConfigDeploymentTags{..} =
    object $
    catMaybes
    [ fmap (("Key",) . toJSON) _appConfigDeploymentTagsKey
    , fmap (("Value",) . toJSON) _appConfigDeploymentTagsValue
    ]

-- | Constructor for 'AppConfigDeploymentTags' containing required fields as
-- arguments.
appConfigDeploymentTags
  :: AppConfigDeploymentTags
appConfigDeploymentTags  =
  AppConfigDeploymentTags
  { _appConfigDeploymentTagsKey = Nothing
  , _appConfigDeploymentTagsValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-deployment-tags.html#cfn-appconfig-deployment-tags-key
acdtKey :: Lens' AppConfigDeploymentTags (Maybe (Val Text))
acdtKey = lens _appConfigDeploymentTagsKey (\s a -> s { _appConfigDeploymentTagsKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-deployment-tags.html#cfn-appconfig-deployment-tags-value
acdtValue :: Lens' AppConfigDeploymentTags (Maybe (Val Text))
acdtValue = lens _appConfigDeploymentTagsValue (\s a -> s { _appConfigDeploymentTagsValue = a })
