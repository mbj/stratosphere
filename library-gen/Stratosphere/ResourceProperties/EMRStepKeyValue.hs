{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-keyvalue.html

module Stratosphere.ResourceProperties.EMRStepKeyValue where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EMRStepKeyValue. See 'emrStepKeyValue' for
-- a more convenient constructor.
data EMRStepKeyValue =
  EMRStepKeyValue
  { _eMRStepKeyValueKey :: Maybe (Val Text)
  , _eMRStepKeyValueValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EMRStepKeyValue where
  toJSON EMRStepKeyValue{..} =
    object $
    catMaybes
    [ ("Key" .=) <$> _eMRStepKeyValueKey
    , ("Value" .=) <$> _eMRStepKeyValueValue
    ]

instance FromJSON EMRStepKeyValue where
  parseJSON (Object obj) =
    EMRStepKeyValue <$>
      obj .:? "Key" <*>
      obj .:? "Value"
  parseJSON _ = mempty

-- | Constructor for 'EMRStepKeyValue' containing required fields as
-- arguments.
emrStepKeyValue
  :: EMRStepKeyValue
emrStepKeyValue  =
  EMRStepKeyValue
  { _eMRStepKeyValueKey = Nothing
  , _eMRStepKeyValueValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-keyvalue.html#cfn-elasticmapreduce-step-keyvalue-key
emrskvKey :: Lens' EMRStepKeyValue (Maybe (Val Text))
emrskvKey = lens _eMRStepKeyValueKey (\s a -> s { _eMRStepKeyValueKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-keyvalue.html#cfn-elasticmapreduce-step-keyvalue-value
emrskvValue :: Lens' EMRStepKeyValue (Maybe (Val Text))
emrskvValue = lens _eMRStepKeyValueValue (\s a -> s { _eMRStepKeyValueValue = a })
