{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html

module Stratosphere.Resources.EKSNodegroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EKSNodegroupLaunchTemplateSpecification
import Stratosphere.ResourceProperties.EKSNodegroupRemoteAccess
import Stratosphere.ResourceProperties.EKSNodegroupScalingConfig

-- | Full data type definition for EKSNodegroup. See 'eksNodegroup' for a more
-- convenient constructor.
data EKSNodegroup =
  EKSNodegroup
  { _eKSNodegroupAmiType :: Maybe (Val Text)
  , _eKSNodegroupClusterName :: Val Text
  , _eKSNodegroupDiskSize :: Maybe (Val Double)
  , _eKSNodegroupForceUpdateEnabled :: Maybe (Val Bool)
  , _eKSNodegroupInstanceTypes :: Maybe (ValList Text)
  , _eKSNodegroupLabels :: Maybe Object
  , _eKSNodegroupLaunchTemplate :: Maybe EKSNodegroupLaunchTemplateSpecification
  , _eKSNodegroupNodeRole :: Val Text
  , _eKSNodegroupNodegroupName :: Maybe (Val Text)
  , _eKSNodegroupReleaseVersion :: Maybe (Val Text)
  , _eKSNodegroupRemoteAccess :: Maybe EKSNodegroupRemoteAccess
  , _eKSNodegroupScalingConfig :: Maybe EKSNodegroupScalingConfig
  , _eKSNodegroupSubnets :: ValList Text
  , _eKSNodegroupTags :: Maybe Object
  , _eKSNodegroupVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties EKSNodegroup where
  toResourceProperties EKSNodegroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EKS::Nodegroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AmiType",) . toJSON) _eKSNodegroupAmiType
        , (Just . ("ClusterName",) . toJSON) _eKSNodegroupClusterName
        , fmap (("DiskSize",) . toJSON) _eKSNodegroupDiskSize
        , fmap (("ForceUpdateEnabled",) . toJSON) _eKSNodegroupForceUpdateEnabled
        , fmap (("InstanceTypes",) . toJSON) _eKSNodegroupInstanceTypes
        , fmap (("Labels",) . toJSON) _eKSNodegroupLabels
        , fmap (("LaunchTemplate",) . toJSON) _eKSNodegroupLaunchTemplate
        , (Just . ("NodeRole",) . toJSON) _eKSNodegroupNodeRole
        , fmap (("NodegroupName",) . toJSON) _eKSNodegroupNodegroupName
        , fmap (("ReleaseVersion",) . toJSON) _eKSNodegroupReleaseVersion
        , fmap (("RemoteAccess",) . toJSON) _eKSNodegroupRemoteAccess
        , fmap (("ScalingConfig",) . toJSON) _eKSNodegroupScalingConfig
        , (Just . ("Subnets",) . toJSON) _eKSNodegroupSubnets
        , fmap (("Tags",) . toJSON) _eKSNodegroupTags
        , fmap (("Version",) . toJSON) _eKSNodegroupVersion
        ]
    }

-- | Constructor for 'EKSNodegroup' containing required fields as arguments.
eksNodegroup
  :: Val Text -- ^ 'eksnClusterName'
  -> Val Text -- ^ 'eksnNodeRole'
  -> ValList Text -- ^ 'eksnSubnets'
  -> EKSNodegroup
eksNodegroup clusterNamearg nodeRolearg subnetsarg =
  EKSNodegroup
  { _eKSNodegroupAmiType = Nothing
  , _eKSNodegroupClusterName = clusterNamearg
  , _eKSNodegroupDiskSize = Nothing
  , _eKSNodegroupForceUpdateEnabled = Nothing
  , _eKSNodegroupInstanceTypes = Nothing
  , _eKSNodegroupLabels = Nothing
  , _eKSNodegroupLaunchTemplate = Nothing
  , _eKSNodegroupNodeRole = nodeRolearg
  , _eKSNodegroupNodegroupName = Nothing
  , _eKSNodegroupReleaseVersion = Nothing
  , _eKSNodegroupRemoteAccess = Nothing
  , _eKSNodegroupScalingConfig = Nothing
  , _eKSNodegroupSubnets = subnetsarg
  , _eKSNodegroupTags = Nothing
  , _eKSNodegroupVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-amitype
eksnAmiType :: Lens' EKSNodegroup (Maybe (Val Text))
eksnAmiType = lens _eKSNodegroupAmiType (\s a -> s { _eKSNodegroupAmiType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-clustername
eksnClusterName :: Lens' EKSNodegroup (Val Text)
eksnClusterName = lens _eKSNodegroupClusterName (\s a -> s { _eKSNodegroupClusterName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-disksize
eksnDiskSize :: Lens' EKSNodegroup (Maybe (Val Double))
eksnDiskSize = lens _eKSNodegroupDiskSize (\s a -> s { _eKSNodegroupDiskSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-forceupdateenabled
eksnForceUpdateEnabled :: Lens' EKSNodegroup (Maybe (Val Bool))
eksnForceUpdateEnabled = lens _eKSNodegroupForceUpdateEnabled (\s a -> s { _eKSNodegroupForceUpdateEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-instancetypes
eksnInstanceTypes :: Lens' EKSNodegroup (Maybe (ValList Text))
eksnInstanceTypes = lens _eKSNodegroupInstanceTypes (\s a -> s { _eKSNodegroupInstanceTypes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-labels
eksnLabels :: Lens' EKSNodegroup (Maybe Object)
eksnLabels = lens _eKSNodegroupLabels (\s a -> s { _eKSNodegroupLabels = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-launchtemplate
eksnLaunchTemplate :: Lens' EKSNodegroup (Maybe EKSNodegroupLaunchTemplateSpecification)
eksnLaunchTemplate = lens _eKSNodegroupLaunchTemplate (\s a -> s { _eKSNodegroupLaunchTemplate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-noderole
eksnNodeRole :: Lens' EKSNodegroup (Val Text)
eksnNodeRole = lens _eKSNodegroupNodeRole (\s a -> s { _eKSNodegroupNodeRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-nodegroupname
eksnNodegroupName :: Lens' EKSNodegroup (Maybe (Val Text))
eksnNodegroupName = lens _eKSNodegroupNodegroupName (\s a -> s { _eKSNodegroupNodegroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-releaseversion
eksnReleaseVersion :: Lens' EKSNodegroup (Maybe (Val Text))
eksnReleaseVersion = lens _eKSNodegroupReleaseVersion (\s a -> s { _eKSNodegroupReleaseVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-remoteaccess
eksnRemoteAccess :: Lens' EKSNodegroup (Maybe EKSNodegroupRemoteAccess)
eksnRemoteAccess = lens _eKSNodegroupRemoteAccess (\s a -> s { _eKSNodegroupRemoteAccess = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-scalingconfig
eksnScalingConfig :: Lens' EKSNodegroup (Maybe EKSNodegroupScalingConfig)
eksnScalingConfig = lens _eKSNodegroupScalingConfig (\s a -> s { _eKSNodegroupScalingConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-subnets
eksnSubnets :: Lens' EKSNodegroup (ValList Text)
eksnSubnets = lens _eKSNodegroupSubnets (\s a -> s { _eKSNodegroupSubnets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-tags
eksnTags :: Lens' EKSNodegroup (Maybe Object)
eksnTags = lens _eKSNodegroupTags (\s a -> s { _eKSNodegroupTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-nodegroup.html#cfn-eks-nodegroup-version
eksnVersion :: Lens' EKSNodegroup (Maybe (Val Text))
eksnVersion = lens _eKSNodegroupVersion (\s a -> s { _eKSNodegroupVersion = a })
