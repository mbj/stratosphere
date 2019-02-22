{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html

module Stratosphere.ResourceProperties.CodeBuildProjectWebhookFilter where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeBuildProjectWebhookFilter. See
-- 'codeBuildProjectWebhookFilter' for a more convenient constructor.
data CodeBuildProjectWebhookFilter =
  CodeBuildProjectWebhookFilter
  { _codeBuildProjectWebhookFilterExcludeMatchedPattern :: Maybe (Val Bool)
  , _codeBuildProjectWebhookFilterPattern :: Val Text
  , _codeBuildProjectWebhookFilterType :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectWebhookFilter where
  toJSON CodeBuildProjectWebhookFilter{..} =
    object $
    catMaybes
    [ fmap (("ExcludeMatchedPattern",) . toJSON . fmap Bool') _codeBuildProjectWebhookFilterExcludeMatchedPattern
    , (Just . ("Pattern",) . toJSON) _codeBuildProjectWebhookFilterPattern
    , (Just . ("Type",) . toJSON) _codeBuildProjectWebhookFilterType
    ]

instance FromJSON CodeBuildProjectWebhookFilter where
  parseJSON (Object obj) =
    CodeBuildProjectWebhookFilter <$>
      fmap (fmap (fmap unBool')) (obj .:? "ExcludeMatchedPattern") <*>
      (obj .: "Pattern") <*>
      (obj .: "Type")
  parseJSON _ = mempty

-- | Constructor for 'CodeBuildProjectWebhookFilter' containing required
-- fields as arguments.
codeBuildProjectWebhookFilter
  :: Val Text -- ^ 'cbpwfPattern'
  -> Val Text -- ^ 'cbpwfType'
  -> CodeBuildProjectWebhookFilter
codeBuildProjectWebhookFilter patternarg typearg =
  CodeBuildProjectWebhookFilter
  { _codeBuildProjectWebhookFilterExcludeMatchedPattern = Nothing
  , _codeBuildProjectWebhookFilterPattern = patternarg
  , _codeBuildProjectWebhookFilterType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html#cfn-codebuild-project-webhookfilter-excludematchedpattern
cbpwfExcludeMatchedPattern :: Lens' CodeBuildProjectWebhookFilter (Maybe (Val Bool))
cbpwfExcludeMatchedPattern = lens _codeBuildProjectWebhookFilterExcludeMatchedPattern (\s a -> s { _codeBuildProjectWebhookFilterExcludeMatchedPattern = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html#cfn-codebuild-project-webhookfilter-pattern
cbpwfPattern :: Lens' CodeBuildProjectWebhookFilter (Val Text)
cbpwfPattern = lens _codeBuildProjectWebhookFilterPattern (\s a -> s { _codeBuildProjectWebhookFilterPattern = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html#cfn-codebuild-project-webhookfilter-type
cbpwfType :: Lens' CodeBuildProjectWebhookFilter (Val Text)
cbpwfType = lens _codeBuildProjectWebhookFilterType (\s a -> s { _codeBuildProjectWebhookFilterType = a })
