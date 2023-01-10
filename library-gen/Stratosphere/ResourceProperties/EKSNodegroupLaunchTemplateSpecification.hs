
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-launchtemplatespecification.html

module Stratosphere.ResourceProperties.EKSNodegroupLaunchTemplateSpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for EKSNodegroupLaunchTemplateSpecification.
-- See 'eksNodegroupLaunchTemplateSpecification' for a more convenient
-- constructor.
data EKSNodegroupLaunchTemplateSpecification =
  EKSNodegroupLaunchTemplateSpecification
  { _eKSNodegroupLaunchTemplateSpecificationId :: Maybe (Val Text)
  , _eKSNodegroupLaunchTemplateSpecificationName :: Maybe (Val Text)
  , _eKSNodegroupLaunchTemplateSpecificationVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EKSNodegroupLaunchTemplateSpecification where
  toJSON EKSNodegroupLaunchTemplateSpecification{..} =
    object $
    catMaybes
    [ fmap (("Id",) . toJSON) _eKSNodegroupLaunchTemplateSpecificationId
    , fmap (("Name",) . toJSON) _eKSNodegroupLaunchTemplateSpecificationName
    , fmap (("Version",) . toJSON) _eKSNodegroupLaunchTemplateSpecificationVersion
    ]

-- | Constructor for 'EKSNodegroupLaunchTemplateSpecification' containing
-- required fields as arguments.
eksNodegroupLaunchTemplateSpecification
  :: EKSNodegroupLaunchTemplateSpecification
eksNodegroupLaunchTemplateSpecification  =
  EKSNodegroupLaunchTemplateSpecification
  { _eKSNodegroupLaunchTemplateSpecificationId = Nothing
  , _eKSNodegroupLaunchTemplateSpecificationName = Nothing
  , _eKSNodegroupLaunchTemplateSpecificationVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-launchtemplatespecification.html#cfn-eks-nodegroup-launchtemplatespecification-id
eksnltsId :: Lens' EKSNodegroupLaunchTemplateSpecification (Maybe (Val Text))
eksnltsId = lens _eKSNodegroupLaunchTemplateSpecificationId (\s a -> s { _eKSNodegroupLaunchTemplateSpecificationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-launchtemplatespecification.html#cfn-eks-nodegroup-launchtemplatespecification-name
eksnltsName :: Lens' EKSNodegroupLaunchTemplateSpecification (Maybe (Val Text))
eksnltsName = lens _eKSNodegroupLaunchTemplateSpecificationName (\s a -> s { _eKSNodegroupLaunchTemplateSpecificationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-launchtemplatespecification.html#cfn-eks-nodegroup-launchtemplatespecification-version
eksnltsVersion :: Lens' EKSNodegroupLaunchTemplateSpecification (Maybe (Val Text))
eksnltsVersion = lens _eKSNodegroupLaunchTemplateSpecificationVersion (\s a -> s { _eKSNodegroupLaunchTemplateSpecificationVersion = a })
