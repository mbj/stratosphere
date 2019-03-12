{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupDeployment where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupRevisionLocation

-- | Full data type definition for CodeDeployDeploymentGroupDeployment. See
-- 'codeDeployDeploymentGroupDeployment' for a more convenient constructor.
data CodeDeployDeploymentGroupDeployment =
  CodeDeployDeploymentGroupDeployment
  { _codeDeployDeploymentGroupDeploymentDescription :: Maybe (Val Text)
  , _codeDeployDeploymentGroupDeploymentIgnoreApplicationStopFailures :: Maybe (Val Bool)
  , _codeDeployDeploymentGroupDeploymentRevision :: CodeDeployDeploymentGroupRevisionLocation
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentGroupDeployment where
  toJSON CodeDeployDeploymentGroupDeployment{..} =
    object $
    catMaybes
    [ fmap (("Description",) . toJSON) _codeDeployDeploymentGroupDeploymentDescription
    , fmap (("IgnoreApplicationStopFailures",) . toJSON) _codeDeployDeploymentGroupDeploymentIgnoreApplicationStopFailures
    , (Just . ("Revision",) . toJSON) _codeDeployDeploymentGroupDeploymentRevision
    ]

-- | Constructor for 'CodeDeployDeploymentGroupDeployment' containing required
-- fields as arguments.
codeDeployDeploymentGroupDeployment
  :: CodeDeployDeploymentGroupRevisionLocation -- ^ 'cddgdRevision'
  -> CodeDeployDeploymentGroupDeployment
codeDeployDeploymentGroupDeployment revisionarg =
  CodeDeployDeploymentGroupDeployment
  { _codeDeployDeploymentGroupDeploymentDescription = Nothing
  , _codeDeployDeploymentGroupDeploymentIgnoreApplicationStopFailures = Nothing
  , _codeDeployDeploymentGroupDeploymentRevision = revisionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html#cfn-properties-codedeploy-deploymentgroup-deployment-description
cddgdDescription :: Lens' CodeDeployDeploymentGroupDeployment (Maybe (Val Text))
cddgdDescription = lens _codeDeployDeploymentGroupDeploymentDescription (\s a -> s { _codeDeployDeploymentGroupDeploymentDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html#cfn-properties-codedeploy-deploymentgroup-deployment-ignoreapplicationstopfailures
cddgdIgnoreApplicationStopFailures :: Lens' CodeDeployDeploymentGroupDeployment (Maybe (Val Bool))
cddgdIgnoreApplicationStopFailures = lens _codeDeployDeploymentGroupDeploymentIgnoreApplicationStopFailures (\s a -> s { _codeDeployDeploymentGroupDeploymentIgnoreApplicationStopFailures = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-deployment.html#cfn-properties-codedeploy-deploymentgroup-deployment-revision
cddgdRevision :: Lens' CodeDeployDeploymentGroupDeployment CodeDeployDeploymentGroupRevisionLocation
cddgdRevision = lens _codeDeployDeploymentGroupDeploymentRevision (\s a -> s { _codeDeployDeploymentGroupDeploymentRevision = a })
