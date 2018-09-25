{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html

module Stratosphere.Resources.CodeBuildProject where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeBuildProjectArtifacts
import Stratosphere.ResourceProperties.CodeBuildProjectProjectCache
import Stratosphere.ResourceProperties.CodeBuildProjectEnvironment
import Stratosphere.ResourceProperties.CodeBuildProjectLogsConfig
import Stratosphere.ResourceProperties.CodeBuildProjectSource
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.CodeBuildProjectProjectTriggers
import Stratosphere.ResourceProperties.CodeBuildProjectVpcConfig

-- | Full data type definition for CodeBuildProject. See 'codeBuildProject'
-- for a more convenient constructor.
data CodeBuildProject =
  CodeBuildProject
  { _codeBuildProjectArtifacts :: CodeBuildProjectArtifacts
  , _codeBuildProjectBadgeEnabled :: Maybe (Val Bool)
  , _codeBuildProjectCache :: Maybe CodeBuildProjectProjectCache
  , _codeBuildProjectDescription :: Maybe (Val Text)
  , _codeBuildProjectEncryptionKey :: Maybe (Val Text)
  , _codeBuildProjectEnvironment :: CodeBuildProjectEnvironment
  , _codeBuildProjectLogsConfig :: Maybe CodeBuildProjectLogsConfig
  , _codeBuildProjectName :: Maybe (Val Text)
  , _codeBuildProjectSecondaryArtifacts :: Maybe [CodeBuildProjectArtifacts]
  , _codeBuildProjectSecondarySources :: Maybe [CodeBuildProjectSource]
  , _codeBuildProjectServiceRole :: Val Text
  , _codeBuildProjectSource :: CodeBuildProjectSource
  , _codeBuildProjectTags :: Maybe [Tag]
  , _codeBuildProjectTimeoutInMinutes :: Maybe (Val Integer)
  , _codeBuildProjectTriggers :: Maybe CodeBuildProjectProjectTriggers
  , _codeBuildProjectVpcConfig :: Maybe CodeBuildProjectVpcConfig
  } deriving (Show, Eq)

instance ToJSON CodeBuildProject where
  toJSON CodeBuildProject{..} =
    object $
    catMaybes
    [ (Just . ("Artifacts",) . toJSON) _codeBuildProjectArtifacts
    , fmap (("BadgeEnabled",) . toJSON . fmap Bool') _codeBuildProjectBadgeEnabled
    , fmap (("Cache",) . toJSON) _codeBuildProjectCache
    , fmap (("Description",) . toJSON) _codeBuildProjectDescription
    , fmap (("EncryptionKey",) . toJSON) _codeBuildProjectEncryptionKey
    , (Just . ("Environment",) . toJSON) _codeBuildProjectEnvironment
    , fmap (("LogsConfig",) . toJSON) _codeBuildProjectLogsConfig
    , fmap (("Name",) . toJSON) _codeBuildProjectName
    , fmap (("SecondaryArtifacts",) . toJSON) _codeBuildProjectSecondaryArtifacts
    , fmap (("SecondarySources",) . toJSON) _codeBuildProjectSecondarySources
    , (Just . ("ServiceRole",) . toJSON) _codeBuildProjectServiceRole
    , (Just . ("Source",) . toJSON) _codeBuildProjectSource
    , fmap (("Tags",) . toJSON) _codeBuildProjectTags
    , fmap (("TimeoutInMinutes",) . toJSON . fmap Integer') _codeBuildProjectTimeoutInMinutes
    , fmap (("Triggers",) . toJSON) _codeBuildProjectTriggers
    , fmap (("VpcConfig",) . toJSON) _codeBuildProjectVpcConfig
    ]

instance FromJSON CodeBuildProject where
  parseJSON (Object obj) =
    CodeBuildProject <$>
      (obj .: "Artifacts") <*>
      fmap (fmap (fmap unBool')) (obj .:? "BadgeEnabled") <*>
      (obj .:? "Cache") <*>
      (obj .:? "Description") <*>
      (obj .:? "EncryptionKey") <*>
      (obj .: "Environment") <*>
      (obj .:? "LogsConfig") <*>
      (obj .:? "Name") <*>
      (obj .:? "SecondaryArtifacts") <*>
      (obj .:? "SecondarySources") <*>
      (obj .: "ServiceRole") <*>
      (obj .: "Source") <*>
      (obj .:? "Tags") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "TimeoutInMinutes") <*>
      (obj .:? "Triggers") <*>
      (obj .:? "VpcConfig")
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
  , _codeBuildProjectBadgeEnabled = Nothing
  , _codeBuildProjectCache = Nothing
  , _codeBuildProjectDescription = Nothing
  , _codeBuildProjectEncryptionKey = Nothing
  , _codeBuildProjectEnvironment = environmentarg
  , _codeBuildProjectLogsConfig = Nothing
  , _codeBuildProjectName = Nothing
  , _codeBuildProjectSecondaryArtifacts = Nothing
  , _codeBuildProjectSecondarySources = Nothing
  , _codeBuildProjectServiceRole = serviceRolearg
  , _codeBuildProjectSource = sourcearg
  , _codeBuildProjectTags = Nothing
  , _codeBuildProjectTimeoutInMinutes = Nothing
  , _codeBuildProjectTriggers = Nothing
  , _codeBuildProjectVpcConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-artifacts
cbpArtifacts :: Lens' CodeBuildProject CodeBuildProjectArtifacts
cbpArtifacts = lens _codeBuildProjectArtifacts (\s a -> s { _codeBuildProjectArtifacts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-badgeenabled
cbpBadgeEnabled :: Lens' CodeBuildProject (Maybe (Val Bool))
cbpBadgeEnabled = lens _codeBuildProjectBadgeEnabled (\s a -> s { _codeBuildProjectBadgeEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-cache
cbpCache :: Lens' CodeBuildProject (Maybe CodeBuildProjectProjectCache)
cbpCache = lens _codeBuildProjectCache (\s a -> s { _codeBuildProjectCache = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-description
cbpDescription :: Lens' CodeBuildProject (Maybe (Val Text))
cbpDescription = lens _codeBuildProjectDescription (\s a -> s { _codeBuildProjectDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-encryptionkey
cbpEncryptionKey :: Lens' CodeBuildProject (Maybe (Val Text))
cbpEncryptionKey = lens _codeBuildProjectEncryptionKey (\s a -> s { _codeBuildProjectEncryptionKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-environment
cbpEnvironment :: Lens' CodeBuildProject CodeBuildProjectEnvironment
cbpEnvironment = lens _codeBuildProjectEnvironment (\s a -> s { _codeBuildProjectEnvironment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-logsconfig
cbpLogsConfig :: Lens' CodeBuildProject (Maybe CodeBuildProjectLogsConfig)
cbpLogsConfig = lens _codeBuildProjectLogsConfig (\s a -> s { _codeBuildProjectLogsConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-name
cbpName :: Lens' CodeBuildProject (Maybe (Val Text))
cbpName = lens _codeBuildProjectName (\s a -> s { _codeBuildProjectName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-secondaryartifacts
cbpSecondaryArtifacts :: Lens' CodeBuildProject (Maybe [CodeBuildProjectArtifacts])
cbpSecondaryArtifacts = lens _codeBuildProjectSecondaryArtifacts (\s a -> s { _codeBuildProjectSecondaryArtifacts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-secondarysources
cbpSecondarySources :: Lens' CodeBuildProject (Maybe [CodeBuildProjectSource])
cbpSecondarySources = lens _codeBuildProjectSecondarySources (\s a -> s { _codeBuildProjectSecondarySources = a })

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-triggers
cbpTriggers :: Lens' CodeBuildProject (Maybe CodeBuildProjectProjectTriggers)
cbpTriggers = lens _codeBuildProjectTriggers (\s a -> s { _codeBuildProjectTriggers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-vpcconfig
cbpVpcConfig :: Lens' CodeBuildProject (Maybe CodeBuildProjectVpcConfig)
cbpVpcConfig = lens _codeBuildProjectVpcConfig (\s a -> s { _codeBuildProjectVpcConfig = a })
