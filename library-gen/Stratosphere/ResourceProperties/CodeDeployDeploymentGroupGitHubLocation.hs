{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision-githublocation.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupGitHubLocation where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CodeDeployDeploymentGroupGitHubLocation.
-- | See 'codeDeployDeploymentGroupGitHubLocation' for a more convenient
-- | constructor.
data CodeDeployDeploymentGroupGitHubLocation =
  CodeDeployDeploymentGroupGitHubLocation
  { _codeDeployDeploymentGroupGitHubLocationCommitId :: Val Text
  , _codeDeployDeploymentGroupGitHubLocationRepository :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON CodeDeployDeploymentGroupGitHubLocation where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 40, omitNothingFields = True }

instance FromJSON CodeDeployDeploymentGroupGitHubLocation where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 40, omitNothingFields = True }

-- | Constructor for 'CodeDeployDeploymentGroupGitHubLocation' containing
-- | required fields as arguments.
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
