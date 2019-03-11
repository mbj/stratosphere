{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-loadbalancerinfo.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupLoadBalancerInfo where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupELBInfo
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupTargetGroupInfo

-- | Full data type definition for CodeDeployDeploymentGroupLoadBalancerInfo.
-- See 'codeDeployDeploymentGroupLoadBalancerInfo' for a more convenient
-- constructor.
data CodeDeployDeploymentGroupLoadBalancerInfo =
  CodeDeployDeploymentGroupLoadBalancerInfo
  { _codeDeployDeploymentGroupLoadBalancerInfoElbInfoList :: Maybe [CodeDeployDeploymentGroupELBInfo]
  , _codeDeployDeploymentGroupLoadBalancerInfoTargetGroupInfoList :: Maybe [CodeDeployDeploymentGroupTargetGroupInfo]
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentGroupLoadBalancerInfo where
  toJSON CodeDeployDeploymentGroupLoadBalancerInfo{..} =
    object $
    catMaybes
    [ fmap (("ElbInfoList",) . toJSON) _codeDeployDeploymentGroupLoadBalancerInfoElbInfoList
    , fmap (("TargetGroupInfoList",) . toJSON) _codeDeployDeploymentGroupLoadBalancerInfoTargetGroupInfoList
    ]

-- | Constructor for 'CodeDeployDeploymentGroupLoadBalancerInfo' containing
-- required fields as arguments.
codeDeployDeploymentGroupLoadBalancerInfo
  :: CodeDeployDeploymentGroupLoadBalancerInfo
codeDeployDeploymentGroupLoadBalancerInfo  =
  CodeDeployDeploymentGroupLoadBalancerInfo
  { _codeDeployDeploymentGroupLoadBalancerInfoElbInfoList = Nothing
  , _codeDeployDeploymentGroupLoadBalancerInfoTargetGroupInfoList = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-loadbalancerinfo.html#cfn-codedeploy-deploymentgroup-loadbalancerinfo-elbinfolist
cddglbiElbInfoList :: Lens' CodeDeployDeploymentGroupLoadBalancerInfo (Maybe [CodeDeployDeploymentGroupELBInfo])
cddglbiElbInfoList = lens _codeDeployDeploymentGroupLoadBalancerInfoElbInfoList (\s a -> s { _codeDeployDeploymentGroupLoadBalancerInfoElbInfoList = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-loadbalancerinfo.html#cfn-codedeploy-deploymentgroup-loadbalancerinfo-targetgroupinfolist
cddglbiTargetGroupInfoList :: Lens' CodeDeployDeploymentGroupLoadBalancerInfo (Maybe [CodeDeployDeploymentGroupTargetGroupInfo])
cddglbiTargetGroupInfoList = lens _codeDeployDeploymentGroupLoadBalancerInfoTargetGroupInfoList (\s a -> s { _codeDeployDeploymentGroupLoadBalancerInfoTargetGroupInfoList = a })
