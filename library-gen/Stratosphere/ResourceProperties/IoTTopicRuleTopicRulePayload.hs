{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-topicrulepayload.html

module Stratosphere.ResourceProperties.IoTTopicRuleTopicRulePayload where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTTopicRuleAction

-- | Full data type definition for IoTTopicRuleTopicRulePayload. See
-- 'ioTTopicRuleTopicRulePayload' for a more convenient constructor.
data IoTTopicRuleTopicRulePayload =
  IoTTopicRuleTopicRulePayload
  { _ioTTopicRuleTopicRulePayloadActions :: [IoTTopicRuleAction]
  , _ioTTopicRuleTopicRulePayloadAwsIotSqlVersion :: Maybe (Val Text)
  , _ioTTopicRuleTopicRulePayloadDescription :: Maybe (Val Text)
  , _ioTTopicRuleTopicRulePayloadErrorAction :: Maybe IoTTopicRuleAction
  , _ioTTopicRuleTopicRulePayloadRuleDisabled :: Val Bool
  , _ioTTopicRuleTopicRulePayloadSql :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTTopicRuleTopicRulePayload where
  toJSON IoTTopicRuleTopicRulePayload{..} =
    object $
    catMaybes
    [ (Just . ("Actions",) . toJSON) _ioTTopicRuleTopicRulePayloadActions
    , fmap (("AwsIotSqlVersion",) . toJSON) _ioTTopicRuleTopicRulePayloadAwsIotSqlVersion
    , fmap (("Description",) . toJSON) _ioTTopicRuleTopicRulePayloadDescription
    , fmap (("ErrorAction",) . toJSON) _ioTTopicRuleTopicRulePayloadErrorAction
    , (Just . ("RuleDisabled",) . toJSON . fmap Bool') _ioTTopicRuleTopicRulePayloadRuleDisabled
    , (Just . ("Sql",) . toJSON) _ioTTopicRuleTopicRulePayloadSql
    ]

instance FromJSON IoTTopicRuleTopicRulePayload where
  parseJSON (Object obj) =
    IoTTopicRuleTopicRulePayload <$>
      (obj .: "Actions") <*>
      (obj .:? "AwsIotSqlVersion") <*>
      (obj .:? "Description") <*>
      (obj .:? "ErrorAction") <*>
      fmap (fmap unBool') (obj .: "RuleDisabled") <*>
      (obj .: "Sql")
  parseJSON _ = mempty

-- | Constructor for 'IoTTopicRuleTopicRulePayload' containing required fields
-- as arguments.
ioTTopicRuleTopicRulePayload
  :: [IoTTopicRuleAction] -- ^ 'ittrtrpActions'
  -> Val Bool -- ^ 'ittrtrpRuleDisabled'
  -> Val Text -- ^ 'ittrtrpSql'
  -> IoTTopicRuleTopicRulePayload
ioTTopicRuleTopicRulePayload actionsarg ruleDisabledarg sqlarg =
  IoTTopicRuleTopicRulePayload
  { _ioTTopicRuleTopicRulePayloadActions = actionsarg
  , _ioTTopicRuleTopicRulePayloadAwsIotSqlVersion = Nothing
  , _ioTTopicRuleTopicRulePayloadDescription = Nothing
  , _ioTTopicRuleTopicRulePayloadErrorAction = Nothing
  , _ioTTopicRuleTopicRulePayloadRuleDisabled = ruleDisabledarg
  , _ioTTopicRuleTopicRulePayloadSql = sqlarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-topicrulepayload.html#cfn-iot-topicrule-topicrulepayload-actions
ittrtrpActions :: Lens' IoTTopicRuleTopicRulePayload [IoTTopicRuleAction]
ittrtrpActions = lens _ioTTopicRuleTopicRulePayloadActions (\s a -> s { _ioTTopicRuleTopicRulePayloadActions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-topicrulepayload.html#cfn-iot-topicrule-topicrulepayload-awsiotsqlversion
ittrtrpAwsIotSqlVersion :: Lens' IoTTopicRuleTopicRulePayload (Maybe (Val Text))
ittrtrpAwsIotSqlVersion = lens _ioTTopicRuleTopicRulePayloadAwsIotSqlVersion (\s a -> s { _ioTTopicRuleTopicRulePayloadAwsIotSqlVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-topicrulepayload.html#cfn-iot-topicrule-topicrulepayload-description
ittrtrpDescription :: Lens' IoTTopicRuleTopicRulePayload (Maybe (Val Text))
ittrtrpDescription = lens _ioTTopicRuleTopicRulePayloadDescription (\s a -> s { _ioTTopicRuleTopicRulePayloadDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-topicrulepayload.html#cfn-iot-topicrule-topicrulepayload-erroraction
ittrtrpErrorAction :: Lens' IoTTopicRuleTopicRulePayload (Maybe IoTTopicRuleAction)
ittrtrpErrorAction = lens _ioTTopicRuleTopicRulePayloadErrorAction (\s a -> s { _ioTTopicRuleTopicRulePayloadErrorAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-topicrulepayload.html#cfn-iot-topicrule-topicrulepayload-ruledisabled
ittrtrpRuleDisabled :: Lens' IoTTopicRuleTopicRulePayload (Val Bool)
ittrtrpRuleDisabled = lens _ioTTopicRuleTopicRulePayloadRuleDisabled (\s a -> s { _ioTTopicRuleTopicRulePayloadRuleDisabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-topicrulepayload.html#cfn-iot-topicrule-topicrulepayload-sql
ittrtrpSql :: Lens' IoTTopicRuleTopicRulePayload (Val Text)
ittrtrpSql = lens _ioTTopicRuleTopicRulePayloadSql (\s a -> s { _ioTTopicRuleTopicRulePayloadSql = a })
