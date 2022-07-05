{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-fargateprofile.html

module Stratosphere.Resources.EKSFargateProfile where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EKSFargateProfileSelector
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EKSFargateProfile. See 'eksFargateProfile'
-- for a more convenient constructor.
data EKSFargateProfile =
  EKSFargateProfile
  { _eKSFargateProfileClusterName :: Val Text
  , _eKSFargateProfileFargateProfileName :: Maybe (Val Text)
  , _eKSFargateProfilePodExecutionRoleArn :: Val Text
  , _eKSFargateProfileSelectors :: [EKSFargateProfileSelector]
  , _eKSFargateProfileSubnets :: Maybe (ValList Text)
  , _eKSFargateProfileTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties EKSFargateProfile where
  toResourceProperties EKSFargateProfile{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EKS::FargateProfile"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ClusterName",) . toJSON) _eKSFargateProfileClusterName
        , fmap (("FargateProfileName",) . toJSON) _eKSFargateProfileFargateProfileName
        , (Just . ("PodExecutionRoleArn",) . toJSON) _eKSFargateProfilePodExecutionRoleArn
        , (Just . ("Selectors",) . toJSON) _eKSFargateProfileSelectors
        , fmap (("Subnets",) . toJSON) _eKSFargateProfileSubnets
        , fmap (("Tags",) . toJSON) _eKSFargateProfileTags
        ]
    }

-- | Constructor for 'EKSFargateProfile' containing required fields as
-- arguments.
eksFargateProfile
  :: Val Text -- ^ 'eksfpClusterName'
  -> Val Text -- ^ 'eksfpPodExecutionRoleArn'
  -> [EKSFargateProfileSelector] -- ^ 'eksfpSelectors'
  -> EKSFargateProfile
eksFargateProfile clusterNamearg podExecutionRoleArnarg selectorsarg =
  EKSFargateProfile
  { _eKSFargateProfileClusterName = clusterNamearg
  , _eKSFargateProfileFargateProfileName = Nothing
  , _eKSFargateProfilePodExecutionRoleArn = podExecutionRoleArnarg
  , _eKSFargateProfileSelectors = selectorsarg
  , _eKSFargateProfileSubnets = Nothing
  , _eKSFargateProfileTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-fargateprofile.html#cfn-eks-fargateprofile-clustername
eksfpClusterName :: Lens' EKSFargateProfile (Val Text)
eksfpClusterName = lens _eKSFargateProfileClusterName (\s a -> s { _eKSFargateProfileClusterName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-fargateprofile.html#cfn-eks-fargateprofile-fargateprofilename
eksfpFargateProfileName :: Lens' EKSFargateProfile (Maybe (Val Text))
eksfpFargateProfileName = lens _eKSFargateProfileFargateProfileName (\s a -> s { _eKSFargateProfileFargateProfileName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-fargateprofile.html#cfn-eks-fargateprofile-podexecutionrolearn
eksfpPodExecutionRoleArn :: Lens' EKSFargateProfile (Val Text)
eksfpPodExecutionRoleArn = lens _eKSFargateProfilePodExecutionRoleArn (\s a -> s { _eKSFargateProfilePodExecutionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-fargateprofile.html#cfn-eks-fargateprofile-selectors
eksfpSelectors :: Lens' EKSFargateProfile [EKSFargateProfileSelector]
eksfpSelectors = lens _eKSFargateProfileSelectors (\s a -> s { _eKSFargateProfileSelectors = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-fargateprofile.html#cfn-eks-fargateprofile-subnets
eksfpSubnets :: Lens' EKSFargateProfile (Maybe (ValList Text))
eksfpSubnets = lens _eKSFargateProfileSubnets (\s a -> s { _eKSFargateProfileSubnets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-fargateprofile.html#cfn-eks-fargateprofile-tags
eksfpTags :: Lens' EKSFargateProfile (Maybe [Tag])
eksfpTags = lens _eKSFargateProfileTags (\s a -> s { _eKSFargateProfileTags = a })
