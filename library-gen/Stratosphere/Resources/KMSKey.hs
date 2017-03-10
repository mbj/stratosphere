{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html

module Stratosphere.Resources.KMSKey where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for KMSKey. See 'kmsKey' for a more convenient
-- constructor.
data KMSKey =
  KMSKey
  { _kMSKeyDescription :: Maybe (Val Text)
  , _kMSKeyEnableKeyRotation :: Maybe (Val Bool')
  , _kMSKeyEnabled :: Maybe (Val Bool')
  , _kMSKeyKeyPolicy :: Object
  , _kMSKeyKeyUsage :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON KMSKey where
  toJSON KMSKey{..} =
    object $
    catMaybes
    [ ("Description" .=) <$> _kMSKeyDescription
    , ("EnableKeyRotation" .=) <$> _kMSKeyEnableKeyRotation
    , ("Enabled" .=) <$> _kMSKeyEnabled
    , Just ("KeyPolicy" .= _kMSKeyKeyPolicy)
    , ("KeyUsage" .=) <$> _kMSKeyKeyUsage
    ]

instance FromJSON KMSKey where
  parseJSON (Object obj) =
    KMSKey <$>
      obj .:? "Description" <*>
      obj .:? "EnableKeyRotation" <*>
      obj .:? "Enabled" <*>
      obj .: "KeyPolicy" <*>
      obj .:? "KeyUsage"
  parseJSON _ = mempty

-- | Constructor for 'KMSKey' containing required fields as arguments.
kmsKey
  :: Object -- ^ 'kmskKeyPolicy'
  -> KMSKey
kmsKey keyPolicyarg =
  KMSKey
  { _kMSKeyDescription = Nothing
  , _kMSKeyEnableKeyRotation = Nothing
  , _kMSKeyEnabled = Nothing
  , _kMSKeyKeyPolicy = keyPolicyarg
  , _kMSKeyKeyUsage = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-description
kmskDescription :: Lens' KMSKey (Maybe (Val Text))
kmskDescription = lens _kMSKeyDescription (\s a -> s { _kMSKeyDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-enablekeyrotation
kmskEnableKeyRotation :: Lens' KMSKey (Maybe (Val Bool'))
kmskEnableKeyRotation = lens _kMSKeyEnableKeyRotation (\s a -> s { _kMSKeyEnableKeyRotation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-enabled
kmskEnabled :: Lens' KMSKey (Maybe (Val Bool'))
kmskEnabled = lens _kMSKeyEnabled (\s a -> s { _kMSKeyEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-keypolicy
kmskKeyPolicy :: Lens' KMSKey Object
kmskKeyPolicy = lens _kMSKeyKeyPolicy (\s a -> s { _kMSKeyKeyPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-keyusage
kmskKeyUsage :: Lens' KMSKey (Maybe (Val Text))
kmskKeyUsage = lens _kMSKeyKeyUsage (\s a -> s { _kMSKeyKeyUsage = a })
