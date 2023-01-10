
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-batchrestrictions.html

module Stratosphere.ResourceProperties.CodeBuildProjectBatchRestrictions where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for CodeBuildProjectBatchRestrictions. See
-- 'codeBuildProjectBatchRestrictions' for a more convenient constructor.
data CodeBuildProjectBatchRestrictions =
  CodeBuildProjectBatchRestrictions
  { _codeBuildProjectBatchRestrictionsComputeTypesAllowed :: Maybe (ValList Text)
  , _codeBuildProjectBatchRestrictionsMaximumBuildsAllowed :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectBatchRestrictions where
  toJSON CodeBuildProjectBatchRestrictions{..} =
    object $
    catMaybes
    [ fmap (("ComputeTypesAllowed",) . toJSON) _codeBuildProjectBatchRestrictionsComputeTypesAllowed
    , fmap (("MaximumBuildsAllowed",) . toJSON) _codeBuildProjectBatchRestrictionsMaximumBuildsAllowed
    ]

-- | Constructor for 'CodeBuildProjectBatchRestrictions' containing required
-- fields as arguments.
codeBuildProjectBatchRestrictions
  :: CodeBuildProjectBatchRestrictions
codeBuildProjectBatchRestrictions  =
  CodeBuildProjectBatchRestrictions
  { _codeBuildProjectBatchRestrictionsComputeTypesAllowed = Nothing
  , _codeBuildProjectBatchRestrictionsMaximumBuildsAllowed = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-batchrestrictions.html#cfn-codebuild-project-batchrestrictions-computetypesallowed
cbpbrComputeTypesAllowed :: Lens' CodeBuildProjectBatchRestrictions (Maybe (ValList Text))
cbpbrComputeTypesAllowed = lens _codeBuildProjectBatchRestrictionsComputeTypesAllowed (\s a -> s { _codeBuildProjectBatchRestrictionsComputeTypesAllowed = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-batchrestrictions.html#cfn-codebuild-project-batchrestrictions-maximumbuildsallowed
cbpbrMaximumBuildsAllowed :: Lens' CodeBuildProjectBatchRestrictions (Maybe (Val Integer))
cbpbrMaximumBuildsAllowed = lens _codeBuildProjectBatchRestrictionsMaximumBuildsAllowed (\s a -> s { _codeBuildProjectBatchRestrictionsMaximumBuildsAllowed = a })
