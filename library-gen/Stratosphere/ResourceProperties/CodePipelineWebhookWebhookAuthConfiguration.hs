{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookauthconfiguration.html

module Stratosphere.ResourceProperties.CodePipelineWebhookWebhookAuthConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- CodePipelineWebhookWebhookAuthConfiguration. See
-- 'codePipelineWebhookWebhookAuthConfiguration' for a more convenient
-- constructor.
data CodePipelineWebhookWebhookAuthConfiguration =
  CodePipelineWebhookWebhookAuthConfiguration
  { _codePipelineWebhookWebhookAuthConfigurationAllowedIPRange :: Maybe (Val Text)
  , _codePipelineWebhookWebhookAuthConfigurationSecretToken :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodePipelineWebhookWebhookAuthConfiguration where
  toJSON CodePipelineWebhookWebhookAuthConfiguration{..} =
    object $
    catMaybes
    [ fmap (("AllowedIPRange",) . toJSON) _codePipelineWebhookWebhookAuthConfigurationAllowedIPRange
    , fmap (("SecretToken",) . toJSON) _codePipelineWebhookWebhookAuthConfigurationSecretToken
    ]

-- | Constructor for 'CodePipelineWebhookWebhookAuthConfiguration' containing
-- required fields as arguments.
codePipelineWebhookWebhookAuthConfiguration
  :: CodePipelineWebhookWebhookAuthConfiguration
codePipelineWebhookWebhookAuthConfiguration  =
  CodePipelineWebhookWebhookAuthConfiguration
  { _codePipelineWebhookWebhookAuthConfigurationAllowedIPRange = Nothing
  , _codePipelineWebhookWebhookAuthConfigurationSecretToken = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookauthconfiguration.html#cfn-codepipeline-webhook-webhookauthconfiguration-allowediprange
cpwwacAllowedIPRange :: Lens' CodePipelineWebhookWebhookAuthConfiguration (Maybe (Val Text))
cpwwacAllowedIPRange = lens _codePipelineWebhookWebhookAuthConfigurationAllowedIPRange (\s a -> s { _codePipelineWebhookWebhookAuthConfigurationAllowedIPRange = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookauthconfiguration.html#cfn-codepipeline-webhook-webhookauthconfiguration-secrettoken
cpwwacSecretToken :: Lens' CodePipelineWebhookWebhookAuthConfiguration (Maybe (Val Text))
cpwwacSecretToken = lens _codePipelineWebhookWebhookAuthConfigurationSecretToken (\s a -> s { _codePipelineWebhookWebhookAuthConfigurationSecretToken = a })
