
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectbuildbatchconfig.html

module Stratosphere.ResourceProperties.CodeBuildProjectProjectBuildBatchConfig where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeBuildProjectBatchRestrictions

-- | Full data type definition for CodeBuildProjectProjectBuildBatchConfig.
-- See 'codeBuildProjectProjectBuildBatchConfig' for a more convenient
-- constructor.
data CodeBuildProjectProjectBuildBatchConfig =
  CodeBuildProjectProjectBuildBatchConfig
  { _codeBuildProjectProjectBuildBatchConfigCombineArtifacts :: Maybe (Val Bool)
  , _codeBuildProjectProjectBuildBatchConfigRestrictions :: Maybe CodeBuildProjectBatchRestrictions
  , _codeBuildProjectProjectBuildBatchConfigServiceRole :: Maybe (Val Text)
  , _codeBuildProjectProjectBuildBatchConfigTimeoutInMins :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectProjectBuildBatchConfig where
  toJSON CodeBuildProjectProjectBuildBatchConfig{..} =
    object $
    catMaybes
    [ fmap (("CombineArtifacts",) . toJSON) _codeBuildProjectProjectBuildBatchConfigCombineArtifacts
    , fmap (("Restrictions",) . toJSON) _codeBuildProjectProjectBuildBatchConfigRestrictions
    , fmap (("ServiceRole",) . toJSON) _codeBuildProjectProjectBuildBatchConfigServiceRole
    , fmap (("TimeoutInMins",) . toJSON) _codeBuildProjectProjectBuildBatchConfigTimeoutInMins
    ]

-- | Constructor for 'CodeBuildProjectProjectBuildBatchConfig' containing
-- required fields as arguments.
codeBuildProjectProjectBuildBatchConfig
  :: CodeBuildProjectProjectBuildBatchConfig
codeBuildProjectProjectBuildBatchConfig  =
  CodeBuildProjectProjectBuildBatchConfig
  { _codeBuildProjectProjectBuildBatchConfigCombineArtifacts = Nothing
  , _codeBuildProjectProjectBuildBatchConfigRestrictions = Nothing
  , _codeBuildProjectProjectBuildBatchConfigServiceRole = Nothing
  , _codeBuildProjectProjectBuildBatchConfigTimeoutInMins = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectbuildbatchconfig.html#cfn-codebuild-project-projectbuildbatchconfig-combineartifacts
cbppbbcCombineArtifacts :: Lens' CodeBuildProjectProjectBuildBatchConfig (Maybe (Val Bool))
cbppbbcCombineArtifacts = lens _codeBuildProjectProjectBuildBatchConfigCombineArtifacts (\s a -> s { _codeBuildProjectProjectBuildBatchConfigCombineArtifacts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectbuildbatchconfig.html#cfn-codebuild-project-projectbuildbatchconfig-restrictions
cbppbbcRestrictions :: Lens' CodeBuildProjectProjectBuildBatchConfig (Maybe CodeBuildProjectBatchRestrictions)
cbppbbcRestrictions = lens _codeBuildProjectProjectBuildBatchConfigRestrictions (\s a -> s { _codeBuildProjectProjectBuildBatchConfigRestrictions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectbuildbatchconfig.html#cfn-codebuild-project-projectbuildbatchconfig-servicerole
cbppbbcServiceRole :: Lens' CodeBuildProjectProjectBuildBatchConfig (Maybe (Val Text))
cbppbbcServiceRole = lens _codeBuildProjectProjectBuildBatchConfigServiceRole (\s a -> s { _codeBuildProjectProjectBuildBatchConfigServiceRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectbuildbatchconfig.html#cfn-codebuild-project-projectbuildbatchconfig-timeoutinmins
cbppbbcTimeoutInMins :: Lens' CodeBuildProjectProjectBuildBatchConfig (Maybe (Val Integer))
cbppbbcTimeoutInMins = lens _codeBuildProjectProjectBuildBatchConfigTimeoutInMins (\s a -> s { _codeBuildProjectProjectBuildBatchConfigTimeoutInMins = a })
