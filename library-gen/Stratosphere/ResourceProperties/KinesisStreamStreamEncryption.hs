{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesis-stream-streamencryption.html

module Stratosphere.ResourceProperties.KinesisStreamStreamEncryption where

import Stratosphere.ResourceImports


-- | Full data type definition for KinesisStreamStreamEncryption. See
-- 'kinesisStreamStreamEncryption' for a more convenient constructor.
data KinesisStreamStreamEncryption =
  KinesisStreamStreamEncryption
  { _kinesisStreamStreamEncryptionEncryptionType :: Val Text
  , _kinesisStreamStreamEncryptionKeyId :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisStreamStreamEncryption where
  toJSON KinesisStreamStreamEncryption{..} =
    object $
    catMaybes
    [ (Just . ("EncryptionType",) . toJSON) _kinesisStreamStreamEncryptionEncryptionType
    , (Just . ("KeyId",) . toJSON) _kinesisStreamStreamEncryptionKeyId
    ]

-- | Constructor for 'KinesisStreamStreamEncryption' containing required
-- fields as arguments.
kinesisStreamStreamEncryption
  :: Val Text -- ^ 'ksseEncryptionType'
  -> Val Text -- ^ 'ksseKeyId'
  -> KinesisStreamStreamEncryption
kinesisStreamStreamEncryption encryptionTypearg keyIdarg =
  KinesisStreamStreamEncryption
  { _kinesisStreamStreamEncryptionEncryptionType = encryptionTypearg
  , _kinesisStreamStreamEncryptionKeyId = keyIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesis-stream-streamencryption.html#cfn-kinesis-stream-streamencryption-encryptiontype
ksseEncryptionType :: Lens' KinesisStreamStreamEncryption (Val Text)
ksseEncryptionType = lens _kinesisStreamStreamEncryptionEncryptionType (\s a -> s { _kinesisStreamStreamEncryptionEncryptionType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesis-stream-streamencryption.html#cfn-kinesis-stream-streamencryption-keyid
ksseKeyId :: Lens' KinesisStreamStreamEncryption (Val Text)
ksseKeyId = lens _kinesisStreamStreamEncryptionKeyId (\s a -> s { _kinesisStreamStreamEncryptionKeyId = a })
