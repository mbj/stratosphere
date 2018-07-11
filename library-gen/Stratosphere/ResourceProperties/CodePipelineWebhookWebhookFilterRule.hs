{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookfilterrule.html

module Stratosphere.ResourceProperties.CodePipelineWebhookWebhookFilterRule where

import Stratosphere.ResourceImports


-- | Full data type definition for CodePipelineWebhookWebhookFilterRule. See
-- 'codePipelineWebhookWebhookFilterRule' for a more convenient constructor.
data CodePipelineWebhookWebhookFilterRule =
  CodePipelineWebhookWebhookFilterRule
  { _codePipelineWebhookWebhookFilterRuleJsonPath :: Val Text
  , _codePipelineWebhookWebhookFilterRuleMatchEquals :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodePipelineWebhookWebhookFilterRule where
  toJSON CodePipelineWebhookWebhookFilterRule{..} =
    object $
    catMaybes
    [ (Just . ("JsonPath",) . toJSON) _codePipelineWebhookWebhookFilterRuleJsonPath
    , fmap (("MatchEquals",) . toJSON) _codePipelineWebhookWebhookFilterRuleMatchEquals
    ]

instance FromJSON CodePipelineWebhookWebhookFilterRule where
  parseJSON (Object obj) =
    CodePipelineWebhookWebhookFilterRule <$>
      (obj .: "JsonPath") <*>
      (obj .:? "MatchEquals")
  parseJSON _ = mempty

-- | Constructor for 'CodePipelineWebhookWebhookFilterRule' containing
-- required fields as arguments.
codePipelineWebhookWebhookFilterRule
  :: Val Text -- ^ 'cpwwfrJsonPath'
  -> CodePipelineWebhookWebhookFilterRule
codePipelineWebhookWebhookFilterRule jsonPatharg =
  CodePipelineWebhookWebhookFilterRule
  { _codePipelineWebhookWebhookFilterRuleJsonPath = jsonPatharg
  , _codePipelineWebhookWebhookFilterRuleMatchEquals = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookfilterrule.html#cfn-codepipeline-webhook-webhookfilterrule-jsonpath
cpwwfrJsonPath :: Lens' CodePipelineWebhookWebhookFilterRule (Val Text)
cpwwfrJsonPath = lens _codePipelineWebhookWebhookFilterRuleJsonPath (\s a -> s { _codePipelineWebhookWebhookFilterRuleJsonPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-webhook-webhookfilterrule.html#cfn-codepipeline-webhook-webhookfilterrule-matchequals
cpwwfrMatchEquals :: Lens' CodePipelineWebhookWebhookFilterRule (Maybe (Val Text))
cpwwfrMatchEquals = lens _codePipelineWebhookWebhookFilterRuleMatchEquals (\s a -> s { _codePipelineWebhookWebhookFilterRuleMatchEquals = a })
