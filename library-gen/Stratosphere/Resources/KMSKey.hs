{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html

module Stratosphere.Resources.KMSKey where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for KMSKey. See 'kmsKey' for a more convenient
-- constructor.
data KMSKey =
  KMSKey
  { _kMSKeyDescription :: Maybe (Val Text)
  , _kMSKeyEnableKeyRotation :: Maybe (Val Bool)
  , _kMSKeyEnabled :: Maybe (Val Bool)
  , _kMSKeyKeyUsage :: Maybe (Val Text)
  , _kMSKeyPendingWindowInDays :: Maybe (Val Integer)
  , _kMSKeyTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties KMSKey where
  toResourceProperties KMSKey{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::KMS::Key"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _kMSKeyDescription
        , fmap (("EnableKeyRotation",) . toJSON) _kMSKeyEnableKeyRotation
        , fmap (("Enabled",) . toJSON) _kMSKeyEnabled
        , fmap (("KeyUsage",) . toJSON) _kMSKeyKeyUsage
        , fmap (("PendingWindowInDays",) . toJSON) _kMSKeyPendingWindowInDays
        , fmap (("Tags",) . toJSON) _kMSKeyTags
        ]
    }

-- | Constructor for 'KMSKey' containing required fields as arguments.
kmsKey
  :: KMSKey
kmsKey  =
  KMSKey
  { _kMSKeyDescription = Nothing
  , _kMSKeyEnableKeyRotation = Nothing
  , _kMSKeyEnabled = Nothing
  , _kMSKeyKeyUsage = Nothing
  , _kMSKeyPendingWindowInDays = Nothing
  , _kMSKeyTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-description
kmskDescription :: Lens' KMSKey (Maybe (Val Text))
kmskDescription = lens _kMSKeyDescription (\s a -> s { _kMSKeyDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-enablekeyrotation
kmskEnableKeyRotation :: Lens' KMSKey (Maybe (Val Bool))
kmskEnableKeyRotation = lens _kMSKeyEnableKeyRotation (\s a -> s { _kMSKeyEnableKeyRotation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-enabled
kmskEnabled :: Lens' KMSKey (Maybe (Val Bool))
kmskEnabled = lens _kMSKeyEnabled (\s a -> s { _kMSKeyEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-keyusage
kmskKeyUsage :: Lens' KMSKey (Maybe (Val Text))
kmskKeyUsage = lens _kMSKeyKeyUsage (\s a -> s { _kMSKeyKeyUsage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-pendingwindowindays
kmskPendingWindowInDays :: Lens' KMSKey (Maybe (Val Integer))
kmskPendingWindowInDays = lens _kMSKeyPendingWindowInDays (\s a -> s { _kMSKeyPendingWindowInDays = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-tags
kmskTags :: Lens' KMSKey (Maybe [Tag])
kmskTags = lens _kMSKeyTags (\s a -> s { _kMSKeyTags = a })
