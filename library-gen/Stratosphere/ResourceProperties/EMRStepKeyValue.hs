{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-step-keyvalue.html

module Stratosphere.ResourceProperties.EMRStepKeyValue where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EMRStepKeyValue. See 'emrStepKeyValue' for
-- | a more convenient constructor.
data EMRStepKeyValue =
  EMRStepKeyValue
  { _eMRStepKeyValueKey :: Maybe (Val Text)
  , _eMRStepKeyValueValue :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON EMRStepKeyValue where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

instance FromJSON EMRStepKeyValue where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

-- | Constructor for 'EMRStepKeyValue' containing required fields as
-- | arguments.
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
