{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html

module Stratosphere.ResourceProperties.CodeBuildProjectProjectCache where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeBuildProjectProjectCache. See
-- 'codeBuildProjectProjectCache' for a more convenient constructor.
data CodeBuildProjectProjectCache =
  CodeBuildProjectProjectCache
  { _codeBuildProjectProjectCacheLocation :: Maybe (Val Text)
  , _codeBuildProjectProjectCacheModes :: Maybe (ValList Text)
  , _codeBuildProjectProjectCacheType :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectProjectCache where
  toJSON CodeBuildProjectProjectCache{..} =
    object $
    catMaybes
    [ fmap (("Location",) . toJSON) _codeBuildProjectProjectCacheLocation
    , fmap (("Modes",) . toJSON) _codeBuildProjectProjectCacheModes
    , (Just . ("Type",) . toJSON) _codeBuildProjectProjectCacheType
    ]

instance FromJSON CodeBuildProjectProjectCache where
  parseJSON (Object obj) =
    CodeBuildProjectProjectCache <$>
      (obj .:? "Location") <*>
      (obj .:? "Modes") <*>
      (obj .: "Type")
  parseJSON _ = mempty

-- | Constructor for 'CodeBuildProjectProjectCache' containing required fields
-- as arguments.
codeBuildProjectProjectCache
  :: Val Text -- ^ 'cbppcType'
  -> CodeBuildProjectProjectCache
codeBuildProjectProjectCache typearg =
  CodeBuildProjectProjectCache
  { _codeBuildProjectProjectCacheLocation = Nothing
  , _codeBuildProjectProjectCacheModes = Nothing
  , _codeBuildProjectProjectCacheType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html#cfn-codebuild-project-projectcache-location
cbppcLocation :: Lens' CodeBuildProjectProjectCache (Maybe (Val Text))
cbppcLocation = lens _codeBuildProjectProjectCacheLocation (\s a -> s { _codeBuildProjectProjectCacheLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html#cfn-codebuild-project-projectcache-modes
cbppcModes :: Lens' CodeBuildProjectProjectCache (Maybe (ValList Text))
cbppcModes = lens _codeBuildProjectProjectCacheModes (\s a -> s { _codeBuildProjectProjectCacheModes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html#cfn-codebuild-project-projectcache-type
cbppcType :: Lens' CodeBuildProjectProjectCache (Val Text)
cbppcType = lens _codeBuildProjectProjectCacheType (\s a -> s { _codeBuildProjectProjectCacheType = a })
