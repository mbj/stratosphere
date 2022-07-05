{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-slackchannelconfiguration.html

module Stratosphere.Resources.ChatbotSlackChannelConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.Types

-- | Full data type definition for ChatbotSlackChannelConfiguration. See
-- 'chatbotSlackChannelConfiguration' for a more convenient constructor.
data ChatbotSlackChannelConfiguration =
  ChatbotSlackChannelConfiguration
  { _chatbotSlackChannelConfigurationConfigurationName :: Val Text
  , _chatbotSlackChannelConfigurationIamRoleArn :: Val Text
  , _chatbotSlackChannelConfigurationLoggingLevel :: Maybe (Val LoggingLevel)
  , _chatbotSlackChannelConfigurationSlackChannelId :: Val Text
  , _chatbotSlackChannelConfigurationSlackWorkspaceId :: Val Text
  , _chatbotSlackChannelConfigurationSnsTopicArns :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToResourceProperties ChatbotSlackChannelConfiguration where
  toResourceProperties ChatbotSlackChannelConfiguration{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Chatbot::SlackChannelConfiguration"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ConfigurationName",) . toJSON) _chatbotSlackChannelConfigurationConfigurationName
        , (Just . ("IamRoleArn",) . toJSON) _chatbotSlackChannelConfigurationIamRoleArn
        , fmap (("LoggingLevel",) . toJSON) _chatbotSlackChannelConfigurationLoggingLevel
        , (Just . ("SlackChannelId",) . toJSON) _chatbotSlackChannelConfigurationSlackChannelId
        , (Just . ("SlackWorkspaceId",) . toJSON) _chatbotSlackChannelConfigurationSlackWorkspaceId
        , fmap (("SnsTopicArns",) . toJSON) _chatbotSlackChannelConfigurationSnsTopicArns
        ]
    }

-- | Constructor for 'ChatbotSlackChannelConfiguration' containing required
-- fields as arguments.
chatbotSlackChannelConfiguration
  :: Val Text -- ^ 'csccConfigurationName'
  -> Val Text -- ^ 'csccIamRoleArn'
  -> Val Text -- ^ 'csccSlackChannelId'
  -> Val Text -- ^ 'csccSlackWorkspaceId'
  -> ChatbotSlackChannelConfiguration
chatbotSlackChannelConfiguration configurationNamearg iamRoleArnarg slackChannelIdarg slackWorkspaceIdarg =
  ChatbotSlackChannelConfiguration
  { _chatbotSlackChannelConfigurationConfigurationName = configurationNamearg
  , _chatbotSlackChannelConfigurationIamRoleArn = iamRoleArnarg
  , _chatbotSlackChannelConfigurationLoggingLevel = Nothing
  , _chatbotSlackChannelConfigurationSlackChannelId = slackChannelIdarg
  , _chatbotSlackChannelConfigurationSlackWorkspaceId = slackWorkspaceIdarg
  , _chatbotSlackChannelConfigurationSnsTopicArns = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-slackchannelconfiguration.html#cfn-chatbot-slackchannelconfiguration-configurationname
csccConfigurationName :: Lens' ChatbotSlackChannelConfiguration (Val Text)
csccConfigurationName = lens _chatbotSlackChannelConfigurationConfigurationName (\s a -> s { _chatbotSlackChannelConfigurationConfigurationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-slackchannelconfiguration.html#cfn-chatbot-slackchannelconfiguration-iamrolearn
csccIamRoleArn :: Lens' ChatbotSlackChannelConfiguration (Val Text)
csccIamRoleArn = lens _chatbotSlackChannelConfigurationIamRoleArn (\s a -> s { _chatbotSlackChannelConfigurationIamRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-slackchannelconfiguration.html#cfn-chatbot-slackchannelconfiguration-logginglevel
csccLoggingLevel :: Lens' ChatbotSlackChannelConfiguration (Maybe (Val LoggingLevel))
csccLoggingLevel = lens _chatbotSlackChannelConfigurationLoggingLevel (\s a -> s { _chatbotSlackChannelConfigurationLoggingLevel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-slackchannelconfiguration.html#cfn-chatbot-slackchannelconfiguration-slackchannelid
csccSlackChannelId :: Lens' ChatbotSlackChannelConfiguration (Val Text)
csccSlackChannelId = lens _chatbotSlackChannelConfigurationSlackChannelId (\s a -> s { _chatbotSlackChannelConfigurationSlackChannelId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-slackchannelconfiguration.html#cfn-chatbot-slackchannelconfiguration-slackworkspaceid
csccSlackWorkspaceId :: Lens' ChatbotSlackChannelConfiguration (Val Text)
csccSlackWorkspaceId = lens _chatbotSlackChannelConfigurationSlackWorkspaceId (\s a -> s { _chatbotSlackChannelConfigurationSlackWorkspaceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-chatbot-slackchannelconfiguration.html#cfn-chatbot-slackchannelconfiguration-snstopicarns
csccSnsTopicArns :: Lens' ChatbotSlackChannelConfiguration (Maybe (ValList Text))
csccSnsTopicArns = lens _chatbotSlackChannelConfigurationSnsTopicArns (\s a -> s { _chatbotSlackChannelConfigurationSnsTopicArns = a })
