{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html

module Stratosphere.ResourceProperties.CodeBuildProjectEnvironment where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeBuildProjectEnvironmentVariable
import Stratosphere.ResourceProperties.CodeBuildProjectRegistryCredential

-- | Full data type definition for CodeBuildProjectEnvironment. See
-- 'codeBuildProjectEnvironment' for a more convenient constructor.
data CodeBuildProjectEnvironment =
  CodeBuildProjectEnvironment
  { _codeBuildProjectEnvironmentCertificate :: Maybe (Val Text)
  , _codeBuildProjectEnvironmentComputeType :: Val Text
  , _codeBuildProjectEnvironmentEnvironmentVariables :: Maybe [CodeBuildProjectEnvironmentVariable]
  , _codeBuildProjectEnvironmentImage :: Val Text
  , _codeBuildProjectEnvironmentImagePullCredentialsType :: Maybe (Val Text)
  , _codeBuildProjectEnvironmentPrivilegedMode :: Maybe (Val Bool)
  , _codeBuildProjectEnvironmentRegistryCredential :: Maybe CodeBuildProjectRegistryCredential
  , _codeBuildProjectEnvironmentType :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectEnvironment where
  toJSON CodeBuildProjectEnvironment{..} =
    object $
    catMaybes
    [ fmap (("Certificate",) . toJSON) _codeBuildProjectEnvironmentCertificate
    , (Just . ("ComputeType",) . toJSON) _codeBuildProjectEnvironmentComputeType
    , fmap (("EnvironmentVariables",) . toJSON) _codeBuildProjectEnvironmentEnvironmentVariables
    , (Just . ("Image",) . toJSON) _codeBuildProjectEnvironmentImage
    , fmap (("ImagePullCredentialsType",) . toJSON) _codeBuildProjectEnvironmentImagePullCredentialsType
    , fmap (("PrivilegedMode",) . toJSON) _codeBuildProjectEnvironmentPrivilegedMode
    , fmap (("RegistryCredential",) . toJSON) _codeBuildProjectEnvironmentRegistryCredential
    , (Just . ("Type",) . toJSON) _codeBuildProjectEnvironmentType
    ]

-- | Constructor for 'CodeBuildProjectEnvironment' containing required fields
-- as arguments.
codeBuildProjectEnvironment
  :: Val Text -- ^ 'cbpeComputeType'
  -> Val Text -- ^ 'cbpeImage'
  -> Val Text -- ^ 'cbpeType'
  -> CodeBuildProjectEnvironment
codeBuildProjectEnvironment computeTypearg imagearg typearg =
  CodeBuildProjectEnvironment
  { _codeBuildProjectEnvironmentCertificate = Nothing
  , _codeBuildProjectEnvironmentComputeType = computeTypearg
  , _codeBuildProjectEnvironmentEnvironmentVariables = Nothing
  , _codeBuildProjectEnvironmentImage = imagearg
  , _codeBuildProjectEnvironmentImagePullCredentialsType = Nothing
  , _codeBuildProjectEnvironmentPrivilegedMode = Nothing
  , _codeBuildProjectEnvironmentRegistryCredential = Nothing
  , _codeBuildProjectEnvironmentType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-certificate
cbpeCertificate :: Lens' CodeBuildProjectEnvironment (Maybe (Val Text))
cbpeCertificate = lens _codeBuildProjectEnvironmentCertificate (\s a -> s { _codeBuildProjectEnvironmentCertificate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-computetype
cbpeComputeType :: Lens' CodeBuildProjectEnvironment (Val Text)
cbpeComputeType = lens _codeBuildProjectEnvironmentComputeType (\s a -> s { _codeBuildProjectEnvironmentComputeType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-environmentvariables
cbpeEnvironmentVariables :: Lens' CodeBuildProjectEnvironment (Maybe [CodeBuildProjectEnvironmentVariable])
cbpeEnvironmentVariables = lens _codeBuildProjectEnvironmentEnvironmentVariables (\s a -> s { _codeBuildProjectEnvironmentEnvironmentVariables = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-image
cbpeImage :: Lens' CodeBuildProjectEnvironment (Val Text)
cbpeImage = lens _codeBuildProjectEnvironmentImage (\s a -> s { _codeBuildProjectEnvironmentImage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-imagepullcredentialstype
cbpeImagePullCredentialsType :: Lens' CodeBuildProjectEnvironment (Maybe (Val Text))
cbpeImagePullCredentialsType = lens _codeBuildProjectEnvironmentImagePullCredentialsType (\s a -> s { _codeBuildProjectEnvironmentImagePullCredentialsType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-privilegedmode
cbpePrivilegedMode :: Lens' CodeBuildProjectEnvironment (Maybe (Val Bool))
cbpePrivilegedMode = lens _codeBuildProjectEnvironmentPrivilegedMode (\s a -> s { _codeBuildProjectEnvironmentPrivilegedMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-registrycredential
cbpeRegistryCredential :: Lens' CodeBuildProjectEnvironment (Maybe CodeBuildProjectRegistryCredential)
cbpeRegistryCredential = lens _codeBuildProjectEnvironmentRegistryCredential (\s a -> s { _codeBuildProjectEnvironmentRegistryCredential = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-type
cbpeType :: Lens' CodeBuildProjectEnvironment (Val Text)
cbpeType = lens _codeBuildProjectEnvironmentType (\s a -> s { _codeBuildProjectEnvironmentType = a })
