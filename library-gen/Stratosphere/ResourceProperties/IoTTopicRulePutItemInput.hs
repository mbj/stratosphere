{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-iot-dynamodbv2-putitem.html

module Stratosphere.ResourceProperties.IoTTopicRulePutItemInput where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


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

instance FromJSON IoTTopicRulePutItemInput where
  parseJSON (Object obj) =
    IoTTopicRulePutItemInput <$>
      (obj .: "TableName")
  parseJSON _ = mempty

-- | Constructor for 'IoTTopicRulePutItemInput' containing required fields as
-- arguments.
ioTTopicRulePutItemInput
  :: Val Text -- ^ 'ittrpiiTableName'
  -> IoTTopicRulePutItemInput
ioTTopicRulePutItemInput tableNamearg =
  IoTTopicRulePutItemInput
  { _ioTTopicRulePutItemInputTableName = tableNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-iot-dynamodbv2-putitem.html#cfn-iot-dynamodbv2-putitem-tablename
ittrpiiTableName :: Lens' IoTTopicRulePutItemInput (Val Text)
ittrpiiTableName = lens _ioTTopicRulePutItemInputTableName (\s a -> s { _ioTTopicRulePutItemInputTableName = a })
