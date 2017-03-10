{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupRevision where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupGitHubLocation
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupS3Location

-- | Full data type definition for CodeDeployDeploymentGroupRevision. See
-- 'codeDeployDeploymentGroupRevision' for a more convenient constructor.
data CodeDeployDeploymentGroupRevision =
  CodeDeployDeploymentGroupRevision
  { _codeDeployDeploymentGroupRevisionGitHubLocation :: Maybe CodeDeployDeploymentGroupGitHubLocation
  , _codeDeployDeploymentGroupRevisionRevisionType :: Maybe (Val Text)
  , _codeDeployDeploymentGroupRevisionS3Location :: Maybe CodeDeployDeploymentGroupS3Location
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentGroupRevision where
  toJSON CodeDeployDeploymentGroupRevision{..} =
    object $
    catMaybes
    [ ("GitHubLocation" .=) <$> _codeDeployDeploymentGroupRevisionGitHubLocation
    , ("RevisionType" .=) <$> _codeDeployDeploymentGroupRevisionRevisionType
    , ("S3Location" .=) <$> _codeDeployDeploymentGroupRevisionS3Location
    ]

instance FromJSON CodeDeployDeploymentGroupRevision where
  parseJSON (Object obj) =
    CodeDeployDeploymentGroupRevision <$>
      obj .:? "GitHubLocation" <*>
      obj .:? "RevisionType" <*>
      obj .:? "S3Location"
  parseJSON _ = mempty

-- | Constructor for 'CodeDeployDeploymentGroupRevision' containing required
-- fields as arguments.
codeDeployDeploymentGroupRevision
  :: CodeDeployDeploymentGroupRevision
codeDeployDeploymentGroupRevision  =
  CodeDeployDeploymentGroupRevision
  { _codeDeployDeploymentGroupRevisionGitHubLocation = Nothing
  , _codeDeployDeploymentGroupRevisionRevisionType = Nothing
  , _codeDeployDeploymentGroupRevisionS3Location = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-githublocation
cddgrGitHubLocation :: Lens' CodeDeployDeploymentGroupRevision (Maybe CodeDeployDeploymentGroupGitHubLocation)
cddgrGitHubLocation = lens _codeDeployDeploymentGroupRevisionGitHubLocation (\s a -> s { _codeDeployDeploymentGroupRevisionGitHubLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-revisiontype
cddgrRevisionType :: Lens' CodeDeployDeploymentGroupRevision (Maybe (Val Text))
cddgrRevisionType = lens _codeDeployDeploymentGroupRevisionRevisionType (\s a -> s { _codeDeployDeploymentGroupRevisionRevisionType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-s3location
cddgrS3Location :: Lens' CodeDeployDeploymentGroupRevision (Maybe CodeDeployDeploymentGroupS3Location)
cddgrS3Location = lens _codeDeployDeploymentGroupRevisionS3Location (\s a -> s { _codeDeployDeploymentGroupRevisionS3Location = a })
