{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html

module Stratosphere.Resources.IAMAccessKey where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for IAMAccessKey. See 'iamAccessKey' for a more
-- | convenient constructor.
data IAMAccessKey =
  IAMAccessKey
  { _iAMAccessKeySerial :: Maybe (Val Integer')
  , _iAMAccessKeyStatus :: Maybe (Val Text)
  , _iAMAccessKeyUserName :: Val Text
  } deriving (Show, Eq)

instance ToJSON IAMAccessKey where
  toJSON IAMAccessKey{..} =
    object
    [ "Serial" .= _iAMAccessKeySerial
    , "Status" .= _iAMAccessKeyStatus
    , "UserName" .= _iAMAccessKeyUserName
    ]

instance FromJSON IAMAccessKey where
  parseJSON (Object obj) =
    IAMAccessKey <$>
      obj .: "Serial" <*>
      obj .: "Status" <*>
      obj .: "UserName"
  parseJSON _ = mempty

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
