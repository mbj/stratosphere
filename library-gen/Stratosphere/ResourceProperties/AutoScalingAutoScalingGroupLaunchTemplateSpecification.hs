
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-launchtemplatespecification.html

module Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupLaunchTemplateSpecification where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- AutoScalingAutoScalingGroupLaunchTemplateSpecification. See
-- 'autoScalingAutoScalingGroupLaunchTemplateSpecification' for a more
-- convenient constructor.
data AutoScalingAutoScalingGroupLaunchTemplateSpecification =
  AutoScalingAutoScalingGroupLaunchTemplateSpecification
  { _autoScalingAutoScalingGroupLaunchTemplateSpecificationLaunchTemplateId :: Maybe (Val Text)
  , _autoScalingAutoScalingGroupLaunchTemplateSpecificationLaunchTemplateName :: Maybe (Val Text)
  , _autoScalingAutoScalingGroupLaunchTemplateSpecificationVersion :: Val Text
  } deriving (Show, Eq)

instance ToJSON AutoScalingAutoScalingGroupLaunchTemplateSpecification where
  toJSON AutoScalingAutoScalingGroupLaunchTemplateSpecification{..} =
    object $
    catMaybes
    [ fmap (("LaunchTemplateId",) . toJSON) _autoScalingAutoScalingGroupLaunchTemplateSpecificationLaunchTemplateId
    , fmap (("LaunchTemplateName",) . toJSON) _autoScalingAutoScalingGroupLaunchTemplateSpecificationLaunchTemplateName
    , (Just . ("Version",) . toJSON) _autoScalingAutoScalingGroupLaunchTemplateSpecificationVersion
    ]

-- | Constructor for 'AutoScalingAutoScalingGroupLaunchTemplateSpecification'
-- containing required fields as arguments.
autoScalingAutoScalingGroupLaunchTemplateSpecification
  :: Val Text -- ^ 'asasgltsVersion'
  -> AutoScalingAutoScalingGroupLaunchTemplateSpecification
autoScalingAutoScalingGroupLaunchTemplateSpecification versionarg =
  AutoScalingAutoScalingGroupLaunchTemplateSpecification
  { _autoScalingAutoScalingGroupLaunchTemplateSpecificationLaunchTemplateId = Nothing
  , _autoScalingAutoScalingGroupLaunchTemplateSpecificationLaunchTemplateName = Nothing
  , _autoScalingAutoScalingGroupLaunchTemplateSpecificationVersion = versionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-launchtemplatespecification.html#cfn-autoscaling-autoscalinggroup-launchtemplatespecification-launchtemplateid
asasgltsLaunchTemplateId :: Lens' AutoScalingAutoScalingGroupLaunchTemplateSpecification (Maybe (Val Text))
asasgltsLaunchTemplateId = lens _autoScalingAutoScalingGroupLaunchTemplateSpecificationLaunchTemplateId (\s a -> s { _autoScalingAutoScalingGroupLaunchTemplateSpecificationLaunchTemplateId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-launchtemplatespecification.html#cfn-autoscaling-autoscalinggroup-launchtemplatespecification-launchtemplatename
asasgltsLaunchTemplateName :: Lens' AutoScalingAutoScalingGroupLaunchTemplateSpecification (Maybe (Val Text))
asasgltsLaunchTemplateName = lens _autoScalingAutoScalingGroupLaunchTemplateSpecificationLaunchTemplateName (\s a -> s { _autoScalingAutoScalingGroupLaunchTemplateSpecificationLaunchTemplateName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-launchtemplatespecification.html#cfn-autoscaling-autoscalinggroup-launchtemplatespecification-version
asasgltsVersion :: Lens' AutoScalingAutoScalingGroupLaunchTemplateSpecification (Val Text)
asasgltsVersion = lens _autoScalingAutoScalingGroupLaunchTemplateSpecificationVersion (\s a -> s { _autoScalingAutoScalingGroupLaunchTemplateSpecificationVersion = a })
