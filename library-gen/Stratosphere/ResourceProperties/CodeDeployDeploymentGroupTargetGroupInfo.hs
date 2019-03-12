{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-targetgroupinfo.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupTargetGroupInfo where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeDeployDeploymentGroupTargetGroupInfo.
-- See 'codeDeployDeploymentGroupTargetGroupInfo' for a more convenient
-- constructor.
data CodeDeployDeploymentGroupTargetGroupInfo =
  CodeDeployDeploymentGroupTargetGroupInfo
  { _codeDeployDeploymentGroupTargetGroupInfoName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentGroupTargetGroupInfo where
  toJSON CodeDeployDeploymentGroupTargetGroupInfo{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _codeDeployDeploymentGroupTargetGroupInfoName
    ]

-- | Constructor for 'CodeDeployDeploymentGroupTargetGroupInfo' containing
-- required fields as arguments.
codeDeployDeploymentGroupTargetGroupInfo
  :: CodeDeployDeploymentGroupTargetGroupInfo
codeDeployDeploymentGroupTargetGroupInfo  =
  CodeDeployDeploymentGroupTargetGroupInfo
  { _codeDeployDeploymentGroupTargetGroupInfoName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-targetgroupinfo.html#cfn-codedeploy-deploymentgroup-targetgroupinfo-name
cddgtgiName :: Lens' CodeDeployDeploymentGroupTargetGroupInfo (Maybe (Val Text))
cddgtgiName = lens _codeDeployDeploymentGroupTargetGroupInfoName (\s a -> s { _codeDeployDeploymentGroupTargetGroupInfoName = a })
