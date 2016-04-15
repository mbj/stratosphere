{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::IAM::AccessKey resource type generates a secret access key and
-- assigns it to an IAM user or AWS account. This type supports updates. For
-- more information about updating stacks, see AWS CloudFormation Stacks
-- Updates.

module Stratosphere.Resources.AccessKey where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for AccessKey. See 'accessKey' for a more
-- convenient constructor.
data AccessKey =
  AccessKey
  { _accessKeySerial :: Maybe (Val Integer')
  , _accessKeyStatus :: Maybe (Val Text)
  , _accessKeyUserName :: Val Text
  } deriving (Show, Generic)

instance ToJSON AccessKey where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 10, omitNothingFields = True }

instance FromJSON AccessKey where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 10, omitNothingFields = True }

-- | Constructor for 'AccessKey' containing required fields as arguments.
accessKey
  :: Val Text -- ^ 'akUserName'
  -> AccessKey
accessKey userNamearg =
  AccessKey
  { _accessKeySerial = Nothing
  , _accessKeyStatus = Nothing
  , _accessKeyUserName = userNamearg
  }

-- | This value is specific to AWS CloudFormation and can only be incremented.
-- Incrementing this value notifies AWS CloudFormation that you want to rotate
-- your access key. When you update your stack, AWS CloudFormation will
-- replace the existing access key with a new key.
akSerial :: Lens' AccessKey (Maybe (Val Integer'))
akSerial = lens _accessKeySerial (\s a -> s { _accessKeySerial = a })

-- | The status of the access key. By default, AWS CloudFormation sets this
-- property value to Active.
akStatus :: Lens' AccessKey (Maybe (Val Text))
akStatus = lens _accessKeyStatus (\s a -> s { _accessKeyStatus = a })

-- | The name of the user that the new key will belong to.
akUserName :: Lens' AccessKey (Val Text)
akUserName = lens _accessKeyUserName (\s a -> s { _accessKeyUserName = a })