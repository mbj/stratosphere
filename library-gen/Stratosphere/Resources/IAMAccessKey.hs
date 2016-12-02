{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html

module Stratosphere.Resources.IAMAccessKey where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IAMAccessKey. See 'iamAccessKey' for a more
-- | convenient constructor.
data IAMAccessKey =
  IAMAccessKey
  { _iAMAccessKeySerial :: Maybe (Val Integer')
  , _iAMAccessKeyStatus :: Maybe (Val Text)
  , _iAMAccessKeyUserName :: Val Text
  } deriving (Show, Generic)

instance ToJSON IAMAccessKey where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 13, omitNothingFields = True }

instance FromJSON IAMAccessKey where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 13, omitNothingFields = True }

-- | Constructor for 'IAMAccessKey' containing required fields as arguments.
iamAccessKey
  :: Val Text -- ^ 'iamakUserName'
  -> IAMAccessKey
iamAccessKey userNamearg =
  IAMAccessKey
  { _iAMAccessKeySerial = Nothing
  , _iAMAccessKeyStatus = Nothing
  , _iAMAccessKeyUserName = userNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html#cfn-iam-accesskey-serial
iamakSerial :: Lens' IAMAccessKey (Maybe (Val Integer'))
iamakSerial = lens _iAMAccessKeySerial (\s a -> s { _iAMAccessKeySerial = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html#cfn-iam-accesskey-status
iamakStatus :: Lens' IAMAccessKey (Maybe (Val Text))
iamakStatus = lens _iAMAccessKeyStatus (\s a -> s { _iAMAccessKeyStatus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html#cfn-iam-accesskey-username
iamakUserName :: Lens' IAMAccessKey (Val Text)
iamakUserName = lens _iAMAccessKeyUserName (\s a -> s { _iAMAccessKeyUserName = a })
