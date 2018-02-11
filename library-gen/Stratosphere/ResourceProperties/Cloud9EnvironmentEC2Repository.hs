{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloud9-environmentec2-repository.html

module Stratosphere.ResourceProperties.Cloud9EnvironmentEC2Repository where

import Stratosphere.ResourceImports


-- | Full data type definition for Cloud9EnvironmentEC2Repository. See
-- 'cloud9EnvironmentEC2Repository' for a more convenient constructor.
data Cloud9EnvironmentEC2Repository =
  Cloud9EnvironmentEC2Repository
  { _cloud9EnvironmentEC2RepositoryPathComponent :: Val Text
  , _cloud9EnvironmentEC2RepositoryRepositoryUrl :: Val Text
  } deriving (Show, Eq)

instance ToJSON Cloud9EnvironmentEC2Repository where
  toJSON Cloud9EnvironmentEC2Repository{..} =
    object $
    catMaybes
    [ (Just . ("PathComponent",) . toJSON) _cloud9EnvironmentEC2RepositoryPathComponent
    , (Just . ("RepositoryUrl",) . toJSON) _cloud9EnvironmentEC2RepositoryRepositoryUrl
    ]

instance FromJSON Cloud9EnvironmentEC2Repository where
  parseJSON (Object obj) =
    Cloud9EnvironmentEC2Repository <$>
      (obj .: "PathComponent") <*>
      (obj .: "RepositoryUrl")
  parseJSON _ = mempty

-- | Constructor for 'Cloud9EnvironmentEC2Repository' containing required
-- fields as arguments.
cloud9EnvironmentEC2Repository
  :: Val Text -- ^ 'ceecrPathComponent'
  -> Val Text -- ^ 'ceecrRepositoryUrl'
  -> Cloud9EnvironmentEC2Repository
cloud9EnvironmentEC2Repository pathComponentarg repositoryUrlarg =
  Cloud9EnvironmentEC2Repository
  { _cloud9EnvironmentEC2RepositoryPathComponent = pathComponentarg
  , _cloud9EnvironmentEC2RepositoryRepositoryUrl = repositoryUrlarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloud9-environmentec2-repository.html#cfn-cloud9-environmentec2-repository-pathcomponent
ceecrPathComponent :: Lens' Cloud9EnvironmentEC2Repository (Val Text)
ceecrPathComponent = lens _cloud9EnvironmentEC2RepositoryPathComponent (\s a -> s { _cloud9EnvironmentEC2RepositoryPathComponent = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloud9-environmentec2-repository.html#cfn-cloud9-environmentec2-repository-repositoryurl
ceecrRepositoryUrl :: Lens' Cloud9EnvironmentEC2Repository (Val Text)
ceecrRepositoryUrl = lens _cloud9EnvironmentEC2RepositoryRepositoryUrl (\s a -> s { _cloud9EnvironmentEC2RepositoryRepositoryUrl = a })
