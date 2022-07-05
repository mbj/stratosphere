{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-sourcecredential.html

module Stratosphere.Resources.CodeBuildSourceCredential where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeBuildSourceCredential. See
-- 'codeBuildSourceCredential' for a more convenient constructor.
data CodeBuildSourceCredential =
  CodeBuildSourceCredential
  { _codeBuildSourceCredentialAuthType :: Val Text
  , _codeBuildSourceCredentialServerType :: Val Text
  , _codeBuildSourceCredentialToken :: Val Text
  , _codeBuildSourceCredentialUsername :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties CodeBuildSourceCredential where
  toResourceProperties CodeBuildSourceCredential{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CodeBuild::SourceCredential"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("AuthType",) . toJSON) _codeBuildSourceCredentialAuthType
        , (Just . ("ServerType",) . toJSON) _codeBuildSourceCredentialServerType
        , (Just . ("Token",) . toJSON) _codeBuildSourceCredentialToken
        , fmap (("Username",) . toJSON) _codeBuildSourceCredentialUsername
        ]
    }

-- | Constructor for 'CodeBuildSourceCredential' containing required fields as
-- arguments.
codeBuildSourceCredential
  :: Val Text -- ^ 'cbscAuthType'
  -> Val Text -- ^ 'cbscServerType'
  -> Val Text -- ^ 'cbscToken'
  -> CodeBuildSourceCredential
codeBuildSourceCredential authTypearg serverTypearg tokenarg =
  CodeBuildSourceCredential
  { _codeBuildSourceCredentialAuthType = authTypearg
  , _codeBuildSourceCredentialServerType = serverTypearg
  , _codeBuildSourceCredentialToken = tokenarg
  , _codeBuildSourceCredentialUsername = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-sourcecredential.html#cfn-codebuild-sourcecredential-authtype
cbscAuthType :: Lens' CodeBuildSourceCredential (Val Text)
cbscAuthType = lens _codeBuildSourceCredentialAuthType (\s a -> s { _codeBuildSourceCredentialAuthType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-sourcecredential.html#cfn-codebuild-sourcecredential-servertype
cbscServerType :: Lens' CodeBuildSourceCredential (Val Text)
cbscServerType = lens _codeBuildSourceCredentialServerType (\s a -> s { _codeBuildSourceCredentialServerType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-sourcecredential.html#cfn-codebuild-sourcecredential-token
cbscToken :: Lens' CodeBuildSourceCredential (Val Text)
cbscToken = lens _codeBuildSourceCredentialToken (\s a -> s { _codeBuildSourceCredentialToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-sourcecredential.html#cfn-codebuild-sourcecredential-username
cbscUsername :: Lens' CodeBuildSourceCredential (Maybe (Val Text))
cbscUsername = lens _codeBuildSourceCredentialUsername (\s a -> s { _codeBuildSourceCredentialUsername = a })
