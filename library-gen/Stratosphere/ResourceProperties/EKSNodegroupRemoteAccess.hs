{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-remoteaccess.html

module Stratosphere.ResourceProperties.EKSNodegroupRemoteAccess where

import Stratosphere.ResourceImports


-- | Full data type definition for EKSNodegroupRemoteAccess. See
-- 'eksNodegroupRemoteAccess' for a more convenient constructor.
data EKSNodegroupRemoteAccess =
  EKSNodegroupRemoteAccess
  { _eKSNodegroupRemoteAccessEc2SshKey :: Val Text
  , _eKSNodegroupRemoteAccessSourceSecurityGroups :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON EKSNodegroupRemoteAccess where
  toJSON EKSNodegroupRemoteAccess{..} =
    object $
    catMaybes
    [ (Just . ("Ec2SshKey",) . toJSON) _eKSNodegroupRemoteAccessEc2SshKey
    , fmap (("SourceSecurityGroups",) . toJSON) _eKSNodegroupRemoteAccessSourceSecurityGroups
    ]

-- | Constructor for 'EKSNodegroupRemoteAccess' containing required fields as
-- arguments.
eksNodegroupRemoteAccess
  :: Val Text -- ^ 'eksnraEc2SshKey'
  -> EKSNodegroupRemoteAccess
eksNodegroupRemoteAccess ec2SshKeyarg =
  EKSNodegroupRemoteAccess
  { _eKSNodegroupRemoteAccessEc2SshKey = ec2SshKeyarg
  , _eKSNodegroupRemoteAccessSourceSecurityGroups = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-remoteaccess.html#cfn-eks-nodegroup-remoteaccess-ec2sshkey
eksnraEc2SshKey :: Lens' EKSNodegroupRemoteAccess (Val Text)
eksnraEc2SshKey = lens _eKSNodegroupRemoteAccessEc2SshKey (\s a -> s { _eKSNodegroupRemoteAccessEc2SshKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-nodegroup-remoteaccess.html#cfn-eks-nodegroup-remoteaccess-sourcesecuritygroups
eksnraSourceSecurityGroups :: Lens' EKSNodegroupRemoteAccess (Maybe (ValList Text))
eksnraSourceSecurityGroups = lens _eKSNodegroupRemoteAccessSourceSecurityGroups (\s a -> s { _eKSNodegroupRemoteAccessSourceSecurityGroups = a })
