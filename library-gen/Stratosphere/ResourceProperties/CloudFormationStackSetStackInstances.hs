{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-stackinstances.html

module Stratosphere.ResourceProperties.CloudFormationStackSetStackInstances where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudFormationStackSetDeploymentTargets
import Stratosphere.ResourceProperties.CloudFormationStackSetParameter

-- | Full data type definition for CloudFormationStackSetStackInstances. See
-- 'cloudFormationStackSetStackInstances' for a more convenient constructor.
data CloudFormationStackSetStackInstances =
  CloudFormationStackSetStackInstances
  { _cloudFormationStackSetStackInstancesDeploymentTargets :: CloudFormationStackSetDeploymentTargets
  , _cloudFormationStackSetStackInstancesParameterOverrides :: Maybe [CloudFormationStackSetParameter]
  , _cloudFormationStackSetStackInstancesRegions :: ValList Text
  } deriving (Show, Eq)

instance ToJSON CloudFormationStackSetStackInstances where
  toJSON CloudFormationStackSetStackInstances{..} =
    object $
    catMaybes
    [ (Just . ("DeploymentTargets",) . toJSON) _cloudFormationStackSetStackInstancesDeploymentTargets
    , fmap (("ParameterOverrides",) . toJSON) _cloudFormationStackSetStackInstancesParameterOverrides
    , (Just . ("Regions",) . toJSON) _cloudFormationStackSetStackInstancesRegions
    ]

-- | Constructor for 'CloudFormationStackSetStackInstances' containing
-- required fields as arguments.
cloudFormationStackSetStackInstances
  :: CloudFormationStackSetDeploymentTargets -- ^ 'cfsssiDeploymentTargets'
  -> ValList Text -- ^ 'cfsssiRegions'
  -> CloudFormationStackSetStackInstances
cloudFormationStackSetStackInstances deploymentTargetsarg regionsarg =
  CloudFormationStackSetStackInstances
  { _cloudFormationStackSetStackInstancesDeploymentTargets = deploymentTargetsarg
  , _cloudFormationStackSetStackInstancesParameterOverrides = Nothing
  , _cloudFormationStackSetStackInstancesRegions = regionsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-stackinstances.html#cfn-cloudformation-stackset-stackinstances-deploymenttargets
cfsssiDeploymentTargets :: Lens' CloudFormationStackSetStackInstances CloudFormationStackSetDeploymentTargets
cfsssiDeploymentTargets = lens _cloudFormationStackSetStackInstancesDeploymentTargets (\s a -> s { _cloudFormationStackSetStackInstancesDeploymentTargets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-stackinstances.html#cfn-cloudformation-stackset-stackinstances-parameteroverrides
cfsssiParameterOverrides :: Lens' CloudFormationStackSetStackInstances (Maybe [CloudFormationStackSetParameter])
cfsssiParameterOverrides = lens _cloudFormationStackSetStackInstancesParameterOverrides (\s a -> s { _cloudFormationStackSetStackInstancesParameterOverrides = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-stackinstances.html#cfn-cloudformation-stackset-stackinstances-regions
cfsssiRegions :: Lens' CloudFormationStackSetStackInstances (ValList Text)
cfsssiRegions = lens _cloudFormationStackSetStackInstancesRegions (\s a -> s { _cloudFormationStackSetStackInstancesRegions = a })
