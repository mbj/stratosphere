{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-keyvalue.html

module Stratosphere.ResourceProperties.EMRStepKeyValue where

import Stratosphere.ResourceImports


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
    [ fmap (("Key",) . toJSON) _eMRStepKeyValueKey
    , fmap (("Value",) . toJSON) _eMRStepKeyValueValue
    ]

instance FromJSON EMRStepKeyValue where
  parseJSON (Object obj) =
    EMRStepKeyValue <$>
      (obj .:? "Key") <*>
      (obj .:? "Value")
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
