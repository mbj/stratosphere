{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html

module Stratosphere.Resources.CodeBuildProject where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.CodeBuildProjectArtifacts
import Stratosphere.ResourceProperties.CodeBuildProjectEnvironment
import Stratosphere.ResourceProperties.CodeBuildProjectSource
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for CodeBuildProject. See 'codeBuildProject'
-- for a more convenient constructor.
data CodeBuildProject =
  CodeBuildProject
  { _codeBuildProjectArtifacts :: CodeBuildProjectArtifacts
  , _codeBuildProjectDescription :: Maybe (Val Text)
  , _codeBuildProjectEncryptionKey :: Maybe (Val Text)
  , _codeBuildProjectEnvironment :: CodeBuildProjectEnvironment
  , _codeBuildProjectName :: Maybe (Val Text)
  , _codeBuildProjectServiceRole :: Val Text
  , _codeBuildProjectSource :: CodeBuildProjectSource
  , _codeBuildProjectTags :: Maybe [Tag]
  , _codeBuildProjectTimeoutInMinutes :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON CodeBuildProject where
  toJSON CodeBuildProject{..} =
    object $
    catMaybes
    [ (Just . ("Artifacts",) . toJSON) _codeBuildProjectArtifacts
    , fmap (("Description",) . toJSON) _codeBuildProjectDescription
    , fmap (("EncryptionKey",) . toJSON) _codeBuildProjectEncryptionKey
    , (Just . ("Environment",) . toJSON) _codeBuildProjectEnvironment
    , fmap (("Name",) . toJSON) _codeBuildProjectName
    , (Just . ("ServiceRole",) . toJSON) _codeBuildProjectServiceRole
    , (Just . ("Source",) . toJSON) _codeBuildProjectSource
    , fmap (("Tags",) . toJSON) _codeBuildProjectTags
    , fmap (("TimeoutInMinutes",) . toJSON . fmap Integer') _codeBuildProjectTimeoutInMinutes
    ]

instance FromJSON CodeBuildProject where
  parseJSON (Object obj) =
    CodeBuildProject <$>
      (obj .: "Artifacts") <*>
      (obj .:? "Description") <*>
      (obj .:? "EncryptionKey") <*>
      (obj .: "Environment") <*>
      (obj .:? "Name") <*>
      (obj .: "ServiceRole") <*>
      (obj .: "Source") <*>
      (obj .:? "Tags") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "TimeoutInMinutes")
  parseJSON _ = mempty

-- | Constructor for 'CodeBuildProject' containing required fields as
-- arguments.
codeBuildProject
  :: CodeBuildProjectArtifacts -- ^ 'cbpArtifacts'
  -> CodeBuildProjectEnvironment -- ^ 'cbpEnvironment'
  -> Val Text -- ^ 'cbpServiceRole'
  -> CodeBuildProjectSource -- ^ 'cbpSource'
  -> CodeBuildProject
codeBuildProject artifactsarg environmentarg serviceRolearg sourcearg =
  CodeBuildProject
  { _codeBuildProjectArtifacts = artifactsarg
  , _codeBuildProjectDescription = Nothing
  , _codeBuildProjectEncryptionKey = Nothing
  , _codeBuildProjectEnvironment = environmentarg
  , _codeBuildProjectName = Nothing
  , _codeBuildProjectServiceRole = serviceRolearg
  , _codeBuildProjectSource = sourcearg
  , _codeBuildProjectTags = Nothing
  , _codeBuildProjectTimeoutInMinutes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-artifacts
cbpArtifacts :: Lens' CodeBuildProject CodeBuildProjectArtifacts
cbpArtifacts = lens _codeBuildProjectArtifacts (\s a -> s { _codeBuildProjectArtifacts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-description
cbpDescription :: Lens' CodeBuildProject (Maybe (Val Text))
cbpDescription = lens _codeBuildProjectDescription (\s a -> s { _codeBuildProjectDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-encryptionkey
cbpEncryptionKey :: Lens' CodeBuildProject (Maybe (Val Text))
cbpEncryptionKey = lens _codeBuildProjectEncryptionKey (\s a -> s { _codeBuildProjectEncryptionKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-environment
cbpEnvironment :: Lens' CodeBuildProject CodeBuildProjectEnvironment
cbpEnvironment = lens _codeBuildProjectEnvironment (\s a -> s { _codeBuildProjectEnvironment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-name
cbpName :: Lens' CodeBuildProject (Maybe (Val Text))
cbpName = lens _codeBuildProjectName (\s a -> s { _codeBuildProjectName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-servicerole
cbpServiceRole :: Lens' CodeBuildProject (Val Text)
cbpServiceRole = lens _codeBuildProjectServiceRole (\s a -> s { _codeBuildProjectServiceRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-source
cbpSource :: Lens' CodeBuildProject CodeBuildProjectSource
cbpSource = lens _codeBuildProjectSource (\s a -> s { _codeBuildProjectSource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-tags
cbpTags :: Lens' CodeBuildProject (Maybe [Tag])
cbpTags = lens _codeBuildProjectTags (\s a -> s { _codeBuildProjectTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-timeoutinminutes
cbpTimeoutInMinutes :: Lens' CodeBuildProject (Maybe (Val Integer))
cbpTimeoutInMinutes = lens _codeBuildProjectTimeoutInMinutes (\s a -> s { _codeBuildProjectTimeoutInMinutes = a })
