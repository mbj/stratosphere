
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision-githublocation.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupGitHubLocation where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for CodeDeployDeploymentGroupGitHubLocation.
-- See 'codeDeployDeploymentGroupGitHubLocation' for a more convenient
-- constructor.
data CodeDeployDeploymentGroupGitHubLocation =
  CodeDeployDeploymentGroupGitHubLocation
  { _codeDeployDeploymentGroupGitHubLocationCommitId :: Val Text
  , _codeDeployDeploymentGroupGitHubLocationRepository :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentGroupGitHubLocation where
  toJSON CodeDeployDeploymentGroupGitHubLocation{..} =
    object $
    catMaybes
    [ (Just . ("CommitId",) . toJSON) _codeDeployDeploymentGroupGitHubLocationCommitId
    , (Just . ("Repository",) . toJSON) _codeDeployDeploymentGroupGitHubLocationRepository
    ]

-- | Constructor for 'CodeDeployDeploymentGroupGitHubLocation' containing
-- required fields as arguments.
codeDeployDeploymentGroupGitHubLocation
  :: Val Text -- ^ 'cddgghlCommitId'
  -> Val Text -- ^ 'cddgghlRepository'
  -> CodeDeployDeploymentGroupGitHubLocation
codeDeployDeploymentGroupGitHubLocation commitIdarg repositoryarg =
  CodeDeployDeploymentGroupGitHubLocation
  { _codeDeployDeploymentGroupGitHubLocationCommitId = commitIdarg
  , _codeDeployDeploymentGroupGitHubLocationRepository = repositoryarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision-githublocation.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-githublocation-commitid
cddgghlCommitId :: Lens' CodeDeployDeploymentGroupGitHubLocation (Val Text)
cddgghlCommitId = lens _codeDeployDeploymentGroupGitHubLocationCommitId (\s a -> s { _codeDeployDeploymentGroupGitHubLocationCommitId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision-githublocation.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-githublocation-repository
cddgghlRepository :: Lens' CodeDeployDeploymentGroupGitHubLocation (Val Text)
cddgghlRepository = lens _codeDeployDeploymentGroupGitHubLocationRepository (\s a -> s { _codeDeployDeploymentGroupGitHubLocationRepository = a })
