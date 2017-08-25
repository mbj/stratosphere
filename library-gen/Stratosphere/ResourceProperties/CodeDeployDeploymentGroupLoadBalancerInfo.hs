{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-loadbalancerinfo.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentGroupLoadBalancerInfo where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.CodeDeployDeploymentGroupELBInfo

-- | Full data type definition for CodeDeployDeploymentGroupLoadBalancerInfo.
-- See 'codeDeployDeploymentGroupLoadBalancerInfo' for a more convenient
-- constructor.
data CodeDeployDeploymentGroupLoadBalancerInfo =
  CodeDeployDeploymentGroupLoadBalancerInfo
  { _codeDeployDeploymentGroupLoadBalancerInfoElbInfoList :: Maybe [CodeDeployDeploymentGroupELBInfo]
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentGroupLoadBalancerInfo where
  toJSON CodeDeployDeploymentGroupLoadBalancerInfo{..} =
    object $
    catMaybes
    [ fmap (("ElbInfoList",) . toJSON) _codeDeployDeploymentGroupLoadBalancerInfoElbInfoList
    ]

instance FromJSON CodeDeployDeploymentGroupLoadBalancerInfo where
  parseJSON (Object obj) =
    CodeDeployDeploymentGroupLoadBalancerInfo <$>
      (obj .:? "ElbInfoList")
  parseJSON _ = mempty

-- | Constructor for 'CodeDeployDeploymentGroupLoadBalancerInfo' containing
-- required fields as arguments.
codeDeployDeploymentGroupLoadBalancerInfo
  :: CodeDeployDeploymentGroupLoadBalancerInfo
codeDeployDeploymentGroupLoadBalancerInfo  =
  CodeDeployDeploymentGroupLoadBalancerInfo
  { _codeDeployDeploymentGroupLoadBalancerInfoElbInfoList = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-loadbalancerinfo.html#cfn-codedeploy-deploymentgroup-loadbalancerinfo-elbinfolist
cddglbiElbInfoList :: Lens' CodeDeployDeploymentGroupLoadBalancerInfo (Maybe [CodeDeployDeploymentGroupELBInfo])
cddglbiElbInfoList = lens _codeDeployDeploymentGroupLoadBalancerInfoElbInfoList (\s a -> s { _codeDeployDeploymentGroupLoadBalancerInfoElbInfoList = a })
