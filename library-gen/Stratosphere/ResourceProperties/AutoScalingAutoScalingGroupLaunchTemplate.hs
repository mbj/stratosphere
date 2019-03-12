{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-mixedinstancespolicy-launchtemplate.html

module Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupLaunchTemplate where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupLaunchTemplateSpecification
import Stratosphere.ResourceProperties.AutoScalingAutoScalingGroupLaunchTemplateOverrides

-- | Full data type definition for AutoScalingAutoScalingGroupLaunchTemplate.
-- See 'autoScalingAutoScalingGroupLaunchTemplate' for a more convenient
-- constructor.
data AutoScalingAutoScalingGroupLaunchTemplate =
  AutoScalingAutoScalingGroupLaunchTemplate
  { _autoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification :: AutoScalingAutoScalingGroupLaunchTemplateSpecification
  , _autoScalingAutoScalingGroupLaunchTemplateOverrides :: Maybe [AutoScalingAutoScalingGroupLaunchTemplateOverrides]
  } deriving (Show, Eq)

instance ToJSON AutoScalingAutoScalingGroupLaunchTemplate where
  toJSON AutoScalingAutoScalingGroupLaunchTemplate{..} =
    object $
    catMaybes
    [ (Just . ("LaunchTemplateSpecification",) . toJSON) _autoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification
    , fmap (("Overrides",) . toJSON) _autoScalingAutoScalingGroupLaunchTemplateOverrides
    ]

-- | Constructor for 'AutoScalingAutoScalingGroupLaunchTemplate' containing
-- required fields as arguments.
autoScalingAutoScalingGroupLaunchTemplate
  :: AutoScalingAutoScalingGroupLaunchTemplateSpecification -- ^ 'asasgltLaunchTemplateSpecification'
  -> AutoScalingAutoScalingGroupLaunchTemplate
autoScalingAutoScalingGroupLaunchTemplate launchTemplateSpecificationarg =
  AutoScalingAutoScalingGroupLaunchTemplate
  { _autoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification = launchTemplateSpecificationarg
  , _autoScalingAutoScalingGroupLaunchTemplateOverrides = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-mixedinstancespolicy-launchtemplate.html#cfn-as-group-launchtemplate
asasgltLaunchTemplateSpecification :: Lens' AutoScalingAutoScalingGroupLaunchTemplate AutoScalingAutoScalingGroupLaunchTemplateSpecification
asasgltLaunchTemplateSpecification = lens _autoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification (\s a -> s { _autoScalingAutoScalingGroupLaunchTemplateLaunchTemplateSpecification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-mixedinstancespolicy-launchtemplate.html#cfn-as-mixedinstancespolicy-overrides
asasgltOverrides :: Lens' AutoScalingAutoScalingGroupLaunchTemplate (Maybe [AutoScalingAutoScalingGroupLaunchTemplateOverrides])
asasgltOverrides = lens _autoScalingAutoScalingGroupLaunchTemplateOverrides (\s a -> s { _autoScalingAutoScalingGroupLaunchTemplateOverrides = a })
