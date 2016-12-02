{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html

module Stratosphere.Resources.KMSKey where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for KMSKey. See 'kmsKey' for a more convenient
-- | constructor.
data KMSKey =
  KMSKey
  { _kMSKeyDescription :: Maybe (Val Text)
  , _kMSKeyEnableKeyRotation :: Maybe (Val Bool')
  , _kMSKeyEnabled :: Maybe (Val Bool')
  , _kMSKeyKeyPolicy :: Object
  , _kMSKeyKeyUsage :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON KMSKey where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 7, omitNothingFields = True }

instance FromJSON KMSKey where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 7, omitNothingFields = True }

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
