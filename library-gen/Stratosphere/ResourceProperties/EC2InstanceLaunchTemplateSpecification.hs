{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-launchtemplatespecification.html

module Stratosphere.ResourceProperties.EC2InstanceLaunchTemplateSpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2InstanceLaunchTemplateSpecification. See
-- 'ec2InstanceLaunchTemplateSpecification' for a more convenient
-- constructor.
data EC2InstanceLaunchTemplateSpecification =
  EC2InstanceLaunchTemplateSpecification
  { _eC2InstanceLaunchTemplateSpecificationLaunchTemplateId :: Maybe (Val Text)
  , _eC2InstanceLaunchTemplateSpecificationLaunchTemplateName :: Maybe (Val Text)
  , _eC2InstanceLaunchTemplateSpecificationVersion :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2InstanceLaunchTemplateSpecification where
  toJSON EC2InstanceLaunchTemplateSpecification{..} =
    object $
    catMaybes
    [ fmap (("LaunchTemplateId",) . toJSON) _eC2InstanceLaunchTemplateSpecificationLaunchTemplateId
    , fmap (("LaunchTemplateName",) . toJSON) _eC2InstanceLaunchTemplateSpecificationLaunchTemplateName
    , (Just . ("Version",) . toJSON) _eC2InstanceLaunchTemplateSpecificationVersion
    ]

-- | Constructor for 'EC2InstanceLaunchTemplateSpecification' containing
-- required fields as arguments.
ec2InstanceLaunchTemplateSpecification
  :: Val Text -- ^ 'eciltsVersion'
  -> EC2InstanceLaunchTemplateSpecification
ec2InstanceLaunchTemplateSpecification versionarg =
  EC2InstanceLaunchTemplateSpecification
  { _eC2InstanceLaunchTemplateSpecificationLaunchTemplateId = Nothing
  , _eC2InstanceLaunchTemplateSpecificationLaunchTemplateName = Nothing
  , _eC2InstanceLaunchTemplateSpecificationVersion = versionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-launchtemplatespecification.html#cfn-ec2-instance-launchtemplatespecification-launchtemplateid
eciltsLaunchTemplateId :: Lens' EC2InstanceLaunchTemplateSpecification (Maybe (Val Text))
eciltsLaunchTemplateId = lens _eC2InstanceLaunchTemplateSpecificationLaunchTemplateId (\s a -> s { _eC2InstanceLaunchTemplateSpecificationLaunchTemplateId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-launchtemplatespecification.html#cfn-ec2-instance-launchtemplatespecification-launchtemplatename
eciltsLaunchTemplateName :: Lens' EC2InstanceLaunchTemplateSpecification (Maybe (Val Text))
eciltsLaunchTemplateName = lens _eC2InstanceLaunchTemplateSpecificationLaunchTemplateName (\s a -> s { _eC2InstanceLaunchTemplateSpecificationLaunchTemplateName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-launchtemplatespecification.html#cfn-ec2-instance-launchtemplatespecification-version
eciltsVersion :: Lens' EC2InstanceLaunchTemplateSpecification (Val Text)
eciltsVersion = lens _eC2InstanceLaunchTemplateSpecificationVersion (\s a -> s { _eC2InstanceLaunchTemplateSpecificationVersion = a })
