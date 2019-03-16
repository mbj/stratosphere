{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-s3logsconfig.html

module Stratosphere.ResourceProperties.CodeBuildProjectS3LogsConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeBuildProjectS3LogsConfig. See
-- 'codeBuildProjectS3LogsConfig' for a more convenient constructor.
data CodeBuildProjectS3LogsConfig =
  CodeBuildProjectS3LogsConfig
  { _codeBuildProjectS3LogsConfigEncryptionDisabled :: Maybe (Val Bool)
  , _codeBuildProjectS3LogsConfigLocation :: Maybe (Val Text)
  , _codeBuildProjectS3LogsConfigStatus :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectS3LogsConfig where
  toJSON CodeBuildProjectS3LogsConfig{..} =
    object $
    catMaybes
    [ fmap (("EncryptionDisabled",) . toJSON) _codeBuildProjectS3LogsConfigEncryptionDisabled
    , fmap (("Location",) . toJSON) _codeBuildProjectS3LogsConfigLocation
    , (Just . ("Status",) . toJSON) _codeBuildProjectS3LogsConfigStatus
    ]

-- | Constructor for 'CodeBuildProjectS3LogsConfig' containing required fields
-- as arguments.
codeBuildProjectS3LogsConfig
  :: Val Text -- ^ 'cbpslcStatus'
  -> CodeBuildProjectS3LogsConfig
codeBuildProjectS3LogsConfig statusarg =
  CodeBuildProjectS3LogsConfig
  { _codeBuildProjectS3LogsConfigEncryptionDisabled = Nothing
  , _codeBuildProjectS3LogsConfigLocation = Nothing
  , _codeBuildProjectS3LogsConfigStatus = statusarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-s3logsconfig.html#cfn-codebuild-project-s3logsconfig-encryptiondisabled
cbpslcEncryptionDisabled :: Lens' CodeBuildProjectS3LogsConfig (Maybe (Val Bool))
cbpslcEncryptionDisabled = lens _codeBuildProjectS3LogsConfigEncryptionDisabled (\s a -> s { _codeBuildProjectS3LogsConfigEncryptionDisabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-s3logsconfig.html#cfn-codebuild-project-s3logsconfig-location
cbpslcLocation :: Lens' CodeBuildProjectS3LogsConfig (Maybe (Val Text))
cbpslcLocation = lens _codeBuildProjectS3LogsConfigLocation (\s a -> s { _codeBuildProjectS3LogsConfigLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-s3logsconfig.html#cfn-codebuild-project-s3logsconfig-status
cbpslcStatus :: Lens' CodeBuildProjectS3LogsConfig (Val Text)
cbpslcStatus = lens _codeBuildProjectS3LogsConfigStatus (\s a -> s { _codeBuildProjectS3LogsConfigStatus = a })
