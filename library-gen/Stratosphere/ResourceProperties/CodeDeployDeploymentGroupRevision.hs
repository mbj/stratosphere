{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupRevision where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupGitHubLocation
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupS3Location

-- | Full data type definition for CodeDeployDeploymentGroupRevision. See
-- | 'codeDeployDeploymentGroupRevision' for a more convenient constructor.
data CodeDeployDeploymentGroupRevision =
  CodeDeployDeploymentGroupRevision
  { _codeDeployDeploymentGroupRevisionGitHubLocation :: Maybe CodeDeployDeploymentGroupGitHubLocation
  , _codeDeployDeploymentGroupRevisionRevisionType :: Maybe (Val Text)
  , _codeDeployDeploymentGroupRevisionS3Location :: Maybe CodeDeployDeploymentGroupS3Location
  } deriving (Show, Eq, Generic)

instance ToJSON CodeDeployDeploymentGroupRevision where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 34, omitNothingFields = True }

instance FromJSON CodeDeployDeploymentGroupRevision where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 34, omitNothingFields = True }

-- | Constructor for 'CodeDeployDeploymentGroupRevision' containing required
-- | fields as arguments.
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
