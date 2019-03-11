{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-putiteminput.html

module Stratosphere.ResourceProperties.IoTTopicRulePutItemInput where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTTopicRulePutItemInput. See
-- 'ioTTopicRulePutItemInput' for a more convenient constructor.
data IoTTopicRulePutItemInput =
  IoTTopicRulePutItemInput
  { _ioTTopicRulePutItemInputTableName :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTTopicRulePutItemInput where
  toJSON IoTTopicRulePutItemInput{..} =
    object $
    catMaybes
    [ (Just . ("TableName",) . toJSON) _ioTTopicRulePutItemInputTableName
    ]

-- | Constructor for 'IoTTopicRulePutItemInput' containing required fields as
-- arguments.
ioTTopicRulePutItemInput
  :: Val Text -- ^ 'ittrpiiTableName'
  -> IoTTopicRulePutItemInput
ioTTopicRulePutItemInput tableNamearg =
  IoTTopicRulePutItemInput
  { _ioTTopicRulePutItemInputTableName = tableNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-putiteminput.html#cfn-iot-topicrule-putiteminput-tablename
ittrpiiTableName :: Lens' IoTTopicRulePutItemInput (Val Text)
ittrpiiTableName = lens _ioTTopicRulePutItemInputTableName (\s a -> s { _ioTTopicRulePutItemInputTableName = a })
