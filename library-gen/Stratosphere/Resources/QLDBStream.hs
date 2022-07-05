{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-stream.html

module Stratosphere.Resources.QLDBStream where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.QLDBStreamKinesisConfiguration
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for QLDBStream. See 'qldbStream' for a more
-- convenient constructor.
data QLDBStream =
  QLDBStream
  { _qLDBStreamExclusiveEndTime :: Maybe (Val Text)
  , _qLDBStreamInclusiveStartTime :: Val Text
  , _qLDBStreamKinesisConfiguration :: QLDBStreamKinesisConfiguration
  , _qLDBStreamLedgerName :: Val Text
  , _qLDBStreamRoleArn :: Val Text
  , _qLDBStreamStreamName :: Val Text
  , _qLDBStreamTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties QLDBStream where
  toResourceProperties QLDBStream{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::QLDB::Stream"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ExclusiveEndTime",) . toJSON) _qLDBStreamExclusiveEndTime
        , (Just . ("InclusiveStartTime",) . toJSON) _qLDBStreamInclusiveStartTime
        , (Just . ("KinesisConfiguration",) . toJSON) _qLDBStreamKinesisConfiguration
        , (Just . ("LedgerName",) . toJSON) _qLDBStreamLedgerName
        , (Just . ("RoleArn",) . toJSON) _qLDBStreamRoleArn
        , (Just . ("StreamName",) . toJSON) _qLDBStreamStreamName
        , fmap (("Tags",) . toJSON) _qLDBStreamTags
        ]
    }

-- | Constructor for 'QLDBStream' containing required fields as arguments.
qldbStream
  :: Val Text -- ^ 'qldbsInclusiveStartTime'
  -> QLDBStreamKinesisConfiguration -- ^ 'qldbsKinesisConfiguration'
  -> Val Text -- ^ 'qldbsLedgerName'
  -> Val Text -- ^ 'qldbsRoleArn'
  -> Val Text -- ^ 'qldbsStreamName'
  -> QLDBStream
qldbStream inclusiveStartTimearg kinesisConfigurationarg ledgerNamearg roleArnarg streamNamearg =
  QLDBStream
  { _qLDBStreamExclusiveEndTime = Nothing
  , _qLDBStreamInclusiveStartTime = inclusiveStartTimearg
  , _qLDBStreamKinesisConfiguration = kinesisConfigurationarg
  , _qLDBStreamLedgerName = ledgerNamearg
  , _qLDBStreamRoleArn = roleArnarg
  , _qLDBStreamStreamName = streamNamearg
  , _qLDBStreamTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-stream.html#cfn-qldb-stream-exclusiveendtime
qldbsExclusiveEndTime :: Lens' QLDBStream (Maybe (Val Text))
qldbsExclusiveEndTime = lens _qLDBStreamExclusiveEndTime (\s a -> s { _qLDBStreamExclusiveEndTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-stream.html#cfn-qldb-stream-inclusivestarttime
qldbsInclusiveStartTime :: Lens' QLDBStream (Val Text)
qldbsInclusiveStartTime = lens _qLDBStreamInclusiveStartTime (\s a -> s { _qLDBStreamInclusiveStartTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-stream.html#cfn-qldb-stream-kinesisconfiguration
qldbsKinesisConfiguration :: Lens' QLDBStream QLDBStreamKinesisConfiguration
qldbsKinesisConfiguration = lens _qLDBStreamKinesisConfiguration (\s a -> s { _qLDBStreamKinesisConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-stream.html#cfn-qldb-stream-ledgername
qldbsLedgerName :: Lens' QLDBStream (Val Text)
qldbsLedgerName = lens _qLDBStreamLedgerName (\s a -> s { _qLDBStreamLedgerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-stream.html#cfn-qldb-stream-rolearn
qldbsRoleArn :: Lens' QLDBStream (Val Text)
qldbsRoleArn = lens _qLDBStreamRoleArn (\s a -> s { _qLDBStreamRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-stream.html#cfn-qldb-stream-streamname
qldbsStreamName :: Lens' QLDBStream (Val Text)
qldbsStreamName = lens _qLDBStreamStreamName (\s a -> s { _qLDBStreamStreamName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-stream.html#cfn-qldb-stream-tags
qldbsTags :: Lens' QLDBStream (Maybe [Tag])
qldbsTags = lens _qLDBStreamTags (\s a -> s { _qLDBStreamTags = a })
