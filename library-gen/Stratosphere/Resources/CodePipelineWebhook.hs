{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html

module Stratosphere.Resources.CodePipelineWebhook where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodePipelineWebhookWebhookAuthConfiguration
import Stratosphere.ResourceProperties.CodePipelineWebhookWebhookFilterRule

-- | Full data type definition for CodePipelineWebhook. See
-- 'codePipelineWebhook' for a more convenient constructor.
data CodePipelineWebhook =
  CodePipelineWebhook
  { _codePipelineWebhookAuthentication :: Val Text
  , _codePipelineWebhookAuthenticationConfiguration :: CodePipelineWebhookWebhookAuthConfiguration
  , _codePipelineWebhookFilters :: [CodePipelineWebhookWebhookFilterRule]
  , _codePipelineWebhookName :: Maybe (Val Text)
  , _codePipelineWebhookRegisterWithThirdParty :: Maybe (Val Bool)
  , _codePipelineWebhookTargetAction :: Val Text
  , _codePipelineWebhookTargetPipeline :: Val Text
  , _codePipelineWebhookTargetPipelineVersion :: Val Integer
  } deriving (Show, Eq)

instance ToResourceProperties CodePipelineWebhook where
  toResourceProperties CodePipelineWebhook{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CodePipeline::Webhook"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Authentication",) . toJSON) _codePipelineWebhookAuthentication
        , (Just . ("AuthenticationConfiguration",) . toJSON) _codePipelineWebhookAuthenticationConfiguration
        , (Just . ("Filters",) . toJSON) _codePipelineWebhookFilters
        , fmap (("Name",) . toJSON) _codePipelineWebhookName
        , fmap (("RegisterWithThirdParty",) . toJSON) _codePipelineWebhookRegisterWithThirdParty
        , (Just . ("TargetAction",) . toJSON) _codePipelineWebhookTargetAction
        , (Just . ("TargetPipeline",) . toJSON) _codePipelineWebhookTargetPipeline
        , (Just . ("TargetPipelineVersion",) . toJSON) _codePipelineWebhookTargetPipelineVersion
        ]
    }

-- | Constructor for 'CodePipelineWebhook' containing required fields as
-- arguments.
codePipelineWebhook
  :: Val Text -- ^ 'cpwAuthentication'
  -> CodePipelineWebhookWebhookAuthConfiguration -- ^ 'cpwAuthenticationConfiguration'
  -> [CodePipelineWebhookWebhookFilterRule] -- ^ 'cpwFilters'
  -> Val Text -- ^ 'cpwTargetAction'
  -> Val Text -- ^ 'cpwTargetPipeline'
  -> Val Integer -- ^ 'cpwTargetPipelineVersion'
  -> CodePipelineWebhook
codePipelineWebhook authenticationarg authenticationConfigurationarg filtersarg targetActionarg targetPipelinearg targetPipelineVersionarg =
  CodePipelineWebhook
  { _codePipelineWebhookAuthentication = authenticationarg
  , _codePipelineWebhookAuthenticationConfiguration = authenticationConfigurationarg
  , _codePipelineWebhookFilters = filtersarg
  , _codePipelineWebhookName = Nothing
  , _codePipelineWebhookRegisterWithThirdParty = Nothing
  , _codePipelineWebhookTargetAction = targetActionarg
  , _codePipelineWebhookTargetPipeline = targetPipelinearg
  , _codePipelineWebhookTargetPipelineVersion = targetPipelineVersionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-authentication
cpwAuthentication :: Lens' CodePipelineWebhook (Val Text)
cpwAuthentication = lens _codePipelineWebhookAuthentication (\s a -> s { _codePipelineWebhookAuthentication = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-authenticationconfiguration
cpwAuthenticationConfiguration :: Lens' CodePipelineWebhook CodePipelineWebhookWebhookAuthConfiguration
cpwAuthenticationConfiguration = lens _codePipelineWebhookAuthenticationConfiguration (\s a -> s { _codePipelineWebhookAuthenticationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-filters
cpwFilters :: Lens' CodePipelineWebhook [CodePipelineWebhookWebhookFilterRule]
cpwFilters = lens _codePipelineWebhookFilters (\s a -> s { _codePipelineWebhookFilters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-name
cpwName :: Lens' CodePipelineWebhook (Maybe (Val Text))
cpwName = lens _codePipelineWebhookName (\s a -> s { _codePipelineWebhookName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-registerwiththirdparty
cpwRegisterWithThirdParty :: Lens' CodePipelineWebhook (Maybe (Val Bool))
cpwRegisterWithThirdParty = lens _codePipelineWebhookRegisterWithThirdParty (\s a -> s { _codePipelineWebhookRegisterWithThirdParty = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-targetaction
cpwTargetAction :: Lens' CodePipelineWebhook (Val Text)
cpwTargetAction = lens _codePipelineWebhookTargetAction (\s a -> s { _codePipelineWebhookTargetAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-targetpipeline
cpwTargetPipeline :: Lens' CodePipelineWebhook (Val Text)
cpwTargetPipeline = lens _codePipelineWebhookTargetPipeline (\s a -> s { _codePipelineWebhookTargetPipeline = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-webhook.html#cfn-codepipeline-webhook-targetpipelineversion
cpwTargetPipelineVersion :: Lens' CodePipelineWebhook (Val Integer)
cpwTargetPipelineVersion = lens _codePipelineWebhookTargetPipelineVersion (\s a -> s { _codePipelineWebhookTargetPipelineVersion = a })
