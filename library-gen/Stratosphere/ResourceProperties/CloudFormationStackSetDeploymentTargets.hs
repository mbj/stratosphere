{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-deploymenttargets.html

module Stratosphere.ResourceProperties.CloudFormationStackSetDeploymentTargets where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudFormationStackSetDeploymentTargets.
-- See 'cloudFormationStackSetDeploymentTargets' for a more convenient
-- constructor.
data CloudFormationStackSetDeploymentTargets =
  CloudFormationStackSetDeploymentTargets
  { _cloudFormationStackSetDeploymentTargetsAccounts :: Maybe (ValList Text)
  , _cloudFormationStackSetDeploymentTargetsOrganizationalUnitIds :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON CloudFormationStackSetDeploymentTargets where
  toJSON CloudFormationStackSetDeploymentTargets{..} =
    object $
    catMaybes
    [ fmap (("Accounts",) . toJSON) _cloudFormationStackSetDeploymentTargetsAccounts
    , fmap (("OrganizationalUnitIds",) . toJSON) _cloudFormationStackSetDeploymentTargetsOrganizationalUnitIds
    ]

-- | Constructor for 'CloudFormationStackSetDeploymentTargets' containing
-- required fields as arguments.
cloudFormationStackSetDeploymentTargets
  :: CloudFormationStackSetDeploymentTargets
cloudFormationStackSetDeploymentTargets  =
  CloudFormationStackSetDeploymentTargets
  { _cloudFormationStackSetDeploymentTargetsAccounts = Nothing
  , _cloudFormationStackSetDeploymentTargetsOrganizationalUnitIds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-deploymenttargets.html#cfn-cloudformation-stackset-deploymenttargets-accounts
cfssdtAccounts :: Lens' CloudFormationStackSetDeploymentTargets (Maybe (ValList Text))
cfssdtAccounts = lens _cloudFormationStackSetDeploymentTargetsAccounts (\s a -> s { _cloudFormationStackSetDeploymentTargetsAccounts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-deploymenttargets.html#cfn-cloudformation-stackset-deploymenttargets-organizationalunitids
cfssdtOrganizationalUnitIds :: Lens' CloudFormationStackSetDeploymentTargets (Maybe (ValList Text))
cfssdtOrganizationalUnitIds = lens _cloudFormationStackSetDeploymentTargetsOrganizationalUnitIds (\s a -> s { _cloudFormationStackSetDeploymentTargetsOrganizationalUnitIds = a })
