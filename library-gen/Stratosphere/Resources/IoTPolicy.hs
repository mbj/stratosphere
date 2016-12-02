{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policy.html

module Stratosphere.Resources.IoTPolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IoTPolicy. See 'ioTPolicy' for a more
-- | convenient constructor.
data IoTPolicy =
  IoTPolicy
  { _ioTPolicyPolicyDocument :: Object
  , _ioTPolicyPolicyName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON IoTPolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 10, omitNothingFields = True }

instance FromJSON IoTPolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 10, omitNothingFields = True }

-- | Constructor for 'IoTPolicy' containing required fields as arguments.
ioTPolicy
  :: Object -- ^ 'itpPolicyDocument'
  -> IoTPolicy
ioTPolicy policyDocumentarg =
  IoTPolicy
  { _ioTPolicyPolicyDocument = policyDocumentarg
  , _ioTPolicyPolicyName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policy.html#cfn-iot-policy-policydocument
itpPolicyDocument :: Lens' IoTPolicy Object
itpPolicyDocument = lens _ioTPolicyPolicyDocument (\s a -> s { _ioTPolicyPolicyDocument = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-policy.html#cfn-iot-policy-policyname
itpPolicyName :: Lens' IoTPolicy (Maybe (Val Text))
itpPolicyName = lens _ioTPolicyPolicyName (\s a -> s { _ioTPolicyPolicyName = a })
