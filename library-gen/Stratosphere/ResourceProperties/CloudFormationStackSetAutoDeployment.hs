{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-autodeployment.html

module Stratosphere.ResourceProperties.CloudFormationStackSetAutoDeployment where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudFormationStackSetAutoDeployment. See
-- 'cloudFormationStackSetAutoDeployment' for a more convenient constructor.
data CloudFormationStackSetAutoDeployment =
  CloudFormationStackSetAutoDeployment
  { _cloudFormationStackSetAutoDeploymentEnabled :: Maybe (Val Bool)
  , _cloudFormationStackSetAutoDeploymentRetainStacksOnAccountRemoval :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON CloudFormationStackSetAutoDeployment where
  toJSON CloudFormationStackSetAutoDeployment{..} =
    object $
    catMaybes
    [ fmap (("Enabled",) . toJSON) _cloudFormationStackSetAutoDeploymentEnabled
    , fmap (("RetainStacksOnAccountRemoval",) . toJSON) _cloudFormationStackSetAutoDeploymentRetainStacksOnAccountRemoval
    ]

-- | Constructor for 'CloudFormationStackSetAutoDeployment' containing
-- required fields as arguments.
cloudFormationStackSetAutoDeployment
  :: CloudFormationStackSetAutoDeployment
cloudFormationStackSetAutoDeployment  =
  CloudFormationStackSetAutoDeployment
  { _cloudFormationStackSetAutoDeploymentEnabled = Nothing
  , _cloudFormationStackSetAutoDeploymentRetainStacksOnAccountRemoval = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-autodeployment.html#cfn-cloudformation-stackset-autodeployment-enabled
cfssadEnabled :: Lens' CloudFormationStackSetAutoDeployment (Maybe (Val Bool))
cfssadEnabled = lens _cloudFormationStackSetAutoDeploymentEnabled (\s a -> s { _cloudFormationStackSetAutoDeploymentEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-autodeployment.html#cfn-cloudformation-stackset-autodeployment-retainstacksonaccountremoval
cfssadRetainStacksOnAccountRemoval :: Lens' CloudFormationStackSetAutoDeployment (Maybe (Val Bool))
cfssadRetainStacksOnAccountRemoval = lens _cloudFormationStackSetAutoDeploymentRetainStacksOnAccountRemoval (\s a -> s { _cloudFormationStackSetAutoDeploymentRetainStacksOnAccountRemoval = a })
