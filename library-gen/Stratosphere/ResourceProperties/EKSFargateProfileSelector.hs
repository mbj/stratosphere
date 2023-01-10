
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-fargateprofile-selector.html

module Stratosphere.ResourceProperties.EKSFargateProfileSelector where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EKSFargateProfileLabel

-- | Full data type definition for EKSFargateProfileSelector. See
-- 'eksFargateProfileSelector' for a more convenient constructor.
data EKSFargateProfileSelector =
  EKSFargateProfileSelector
  { _eKSFargateProfileSelectorLabels :: Maybe [EKSFargateProfileLabel]
  , _eKSFargateProfileSelectorNamespace :: Val Text
  } deriving (Show, Eq)

instance ToJSON EKSFargateProfileSelector where
  toJSON EKSFargateProfileSelector{..} =
    object $
    catMaybes
    [ fmap (("Labels",) . toJSON) _eKSFargateProfileSelectorLabels
    , (Just . ("Namespace",) . toJSON) _eKSFargateProfileSelectorNamespace
    ]

-- | Constructor for 'EKSFargateProfileSelector' containing required fields as
-- arguments.
eksFargateProfileSelector
  :: Val Text -- ^ 'eksfpsNamespace'
  -> EKSFargateProfileSelector
eksFargateProfileSelector namespacearg =
  EKSFargateProfileSelector
  { _eKSFargateProfileSelectorLabels = Nothing
  , _eKSFargateProfileSelectorNamespace = namespacearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-fargateprofile-selector.html#cfn-eks-fargateprofile-selector-labels
eksfpsLabels :: Lens' EKSFargateProfileSelector (Maybe [EKSFargateProfileLabel])
eksfpsLabels = lens _eKSFargateProfileSelectorLabels (\s a -> s { _eKSFargateProfileSelectorLabels = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-fargateprofile-selector.html#cfn-eks-fargateprofile-selector-namespace
eksfpsNamespace :: Lens' EKSFargateProfileSelector (Val Text)
eksfpsNamespace = lens _eKSFargateProfileSelectorNamespace (\s a -> s { _eKSFargateProfileSelectorNamespace = a })
