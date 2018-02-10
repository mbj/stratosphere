{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupRevisionLocation where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupGitHubLocation
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupS3Location

-- | Full data type definition for CodeDeployDeploymentGroupRevisionLocation.
-- See 'codeDeployDeploymentGroupRevisionLocation' for a more convenient
-- constructor.
data CodeDeployDeploymentGroupRevisionLocation =
  CodeDeployDeploymentGroupRevisionLocation
  { _codeDeployDeploymentGroupRevisionLocationGitHubLocation :: Maybe CodeDeployDeploymentGroupGitHubLocation
  , _codeDeployDeploymentGroupRevisionLocationRevisionType :: Maybe (Val Text)
  , _codeDeployDeploymentGroupRevisionLocationS3Location :: Maybe CodeDeployDeploymentGroupS3Location
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentGroupRevisionLocation where
  toJSON CodeDeployDeploymentGroupRevisionLocation{..} =
    object $
    catMaybes
    [ fmap (("GitHubLocation",) . toJSON) _codeDeployDeploymentGroupRevisionLocationGitHubLocation
    , fmap (("RevisionType",) . toJSON) _codeDeployDeploymentGroupRevisionLocationRevisionType
    , fmap (("S3Location",) . toJSON) _codeDeployDeploymentGroupRevisionLocationS3Location
    ]

instance FromJSON CodeDeployDeploymentGroupRevisionLocation where
  parseJSON (Object obj) =
    CodeDeployDeploymentGroupRevisionLocation <$>
      (obj .:? "GitHubLocation") <*>
      (obj .:? "RevisionType") <*>
      (obj .:? "S3Location")
  parseJSON _ = mempty

-- | Constructor for 'CodeDeployDeploymentGroupRevisionLocation' containing
-- required fields as arguments.
codeDeployDeploymentGroupRevisionLocation
  :: CodeDeployDeploymentGroupRevisionLocation
codeDeployDeploymentGroupRevisionLocation  =
  CodeDeployDeploymentGroupRevisionLocation
  { _codeDeployDeploymentGroupRevisionLocationGitHubLocation = Nothing
  , _codeDeployDeploymentGroupRevisionLocationRevisionType = Nothing
  , _codeDeployDeploymentGroupRevisionLocationS3Location = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-githublocation
cddgrlGitHubLocation :: Lens' CodeDeployDeploymentGroupRevisionLocation (Maybe CodeDeployDeploymentGroupGitHubLocation)
cddgrlGitHubLocation = lens _codeDeployDeploymentGroupRevisionLocationGitHubLocation (\s a -> s { _codeDeployDeploymentGroupRevisionLocationGitHubLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-revisiontype
cddgrlRevisionType :: Lens' CodeDeployDeploymentGroupRevisionLocation (Maybe (Val Text))
cddgrlRevisionType = lens _codeDeployDeploymentGroupRevisionLocationRevisionType (\s a -> s { _codeDeployDeploymentGroupRevisionLocationRevisionType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment-revision.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision-s3location
cddgrlS3Location :: Lens' CodeDeployDeploymentGroupRevisionLocation (Maybe CodeDeployDeploymentGroupS3Location)
cddgrlS3Location = lens _codeDeployDeploymentGroupRevisionLocationS3Location (\s a -> s { _codeDeployDeploymentGroupRevisionLocationS3Location = a })
