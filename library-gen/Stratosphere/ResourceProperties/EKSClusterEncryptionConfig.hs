
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-encryptionconfig.html

module Stratosphere.ResourceProperties.EKSClusterEncryptionConfig where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EKSClusterProvider

-- | Full data type definition for EKSClusterEncryptionConfig. See
-- 'eksClusterEncryptionConfig' for a more convenient constructor.
data EKSClusterEncryptionConfig =
  EKSClusterEncryptionConfig
  { _eKSClusterEncryptionConfigProvider :: Maybe EKSClusterProvider
  , _eKSClusterEncryptionConfigResources :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON EKSClusterEncryptionConfig where
  toJSON EKSClusterEncryptionConfig{..} =
    object $
    catMaybes
    [ fmap (("Provider",) . toJSON) _eKSClusterEncryptionConfigProvider
    , fmap (("Resources",) . toJSON) _eKSClusterEncryptionConfigResources
    ]

-- | Constructor for 'EKSClusterEncryptionConfig' containing required fields
-- as arguments.
eksClusterEncryptionConfig
  :: EKSClusterEncryptionConfig
eksClusterEncryptionConfig  =
  EKSClusterEncryptionConfig
  { _eKSClusterEncryptionConfigProvider = Nothing
  , _eKSClusterEncryptionConfigResources = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-encryptionconfig.html#cfn-eks-cluster-encryptionconfig-provider
ekscecProvider :: Lens' EKSClusterEncryptionConfig (Maybe EKSClusterProvider)
ekscecProvider = lens _eKSClusterEncryptionConfigProvider (\s a -> s { _eKSClusterEncryptionConfigProvider = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-encryptionconfig.html#cfn-eks-cluster-encryptionconfig-resources
ekscecResources :: Lens' EKSClusterEncryptionConfig (Maybe (ValList Text))
ekscecResources = lens _eKSClusterEncryptionConfigResources (\s a -> s { _eKSClusterEncryptionConfigResources = a })
