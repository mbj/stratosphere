
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-registrycredential.html

module Stratosphere.ResourceProperties.CodeBuildProjectRegistryCredential where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeBuildProjectRegistryCredential. See
-- 'codeBuildProjectRegistryCredential' for a more convenient constructor.
data CodeBuildProjectRegistryCredential =
  CodeBuildProjectRegistryCredential
  { _codeBuildProjectRegistryCredentialCredential :: Val Text
  , _codeBuildProjectRegistryCredentialCredentialProvider :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectRegistryCredential where
  toJSON CodeBuildProjectRegistryCredential{..} =
    object $
    catMaybes
    [ (Just . ("Credential",) . toJSON) _codeBuildProjectRegistryCredentialCredential
    , (Just . ("CredentialProvider",) . toJSON) _codeBuildProjectRegistryCredentialCredentialProvider
    ]

-- | Constructor for 'CodeBuildProjectRegistryCredential' containing required
-- fields as arguments.
codeBuildProjectRegistryCredential
  :: Val Text -- ^ 'cbprcCredential'
  -> Val Text -- ^ 'cbprcCredentialProvider'
  -> CodeBuildProjectRegistryCredential
codeBuildProjectRegistryCredential credentialarg credentialProviderarg =
  CodeBuildProjectRegistryCredential
  { _codeBuildProjectRegistryCredentialCredential = credentialarg
  , _codeBuildProjectRegistryCredentialCredentialProvider = credentialProviderarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-registrycredential.html#cfn-codebuild-project-registrycredential-credential
cbprcCredential :: Lens' CodeBuildProjectRegistryCredential (Val Text)
cbprcCredential = lens _codeBuildProjectRegistryCredentialCredential (\s a -> s { _codeBuildProjectRegistryCredentialCredential = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-registrycredential.html#cfn-codebuild-project-registrycredential-credentialprovider
cbprcCredentialProvider :: Lens' CodeBuildProjectRegistryCredential (Val Text)
cbprcCredentialProvider = lens _codeBuildProjectRegistryCredentialCredentialProvider (\s a -> s { _codeBuildProjectRegistryCredentialCredentialProvider = a })
