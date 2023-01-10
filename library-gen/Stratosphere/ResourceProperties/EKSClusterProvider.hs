
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-provider.html

module Stratosphere.ResourceProperties.EKSClusterProvider where

import Stratosphere.ResourceImports


-- | Full data type definition for EKSClusterProvider. See
-- 'eksClusterProvider' for a more convenient constructor.
data EKSClusterProvider =
  EKSClusterProvider
  { _eKSClusterProviderKeyArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EKSClusterProvider where
  toJSON EKSClusterProvider{..} =
    object $
    catMaybes
    [ fmap (("KeyArn",) . toJSON) _eKSClusterProviderKeyArn
    ]

-- | Constructor for 'EKSClusterProvider' containing required fields as
-- arguments.
eksClusterProvider
  :: EKSClusterProvider
eksClusterProvider  =
  EKSClusterProvider
  { _eKSClusterProviderKeyArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-provider.html#cfn-eks-cluster-provider-keyarn
ekscpKeyArn :: Lens' EKSClusterProvider (Maybe (Val Text))
ekscpKeyArn = lens _eKSClusterProviderKeyArn (\s a -> s { _eKSClusterProviderKeyArn = a })
