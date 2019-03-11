{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationOutputOutput where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationOutputDestinationSchema
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutput
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationOutputKinesisStreamsOutput
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationOutputLambdaOutput

-- | Full data type definition for KinesisAnalyticsV2ApplicationOutputOutput.
-- See 'kinesisAnalyticsV2ApplicationOutputOutput' for a more convenient
-- constructor.
data KinesisAnalyticsV2ApplicationOutputOutput =
  KinesisAnalyticsV2ApplicationOutputOutput
  { _kinesisAnalyticsV2ApplicationOutputOutputDestinationSchema :: KinesisAnalyticsV2ApplicationOutputDestinationSchema
  , _kinesisAnalyticsV2ApplicationOutputOutputKinesisFirehoseOutput :: Maybe KinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutput
  , _kinesisAnalyticsV2ApplicationOutputOutputKinesisStreamsOutput :: Maybe KinesisAnalyticsV2ApplicationOutputKinesisStreamsOutput
  , _kinesisAnalyticsV2ApplicationOutputOutputLambdaOutput :: Maybe KinesisAnalyticsV2ApplicationOutputLambdaOutput
  , _kinesisAnalyticsV2ApplicationOutputOutputName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationOutputOutput where
  toJSON KinesisAnalyticsV2ApplicationOutputOutput{..} =
    object $
    catMaybes
    [ (Just . ("DestinationSchema",) . toJSON) _kinesisAnalyticsV2ApplicationOutputOutputDestinationSchema
    , fmap (("KinesisFirehoseOutput",) . toJSON) _kinesisAnalyticsV2ApplicationOutputOutputKinesisFirehoseOutput
    , fmap (("KinesisStreamsOutput",) . toJSON) _kinesisAnalyticsV2ApplicationOutputOutputKinesisStreamsOutput
    , fmap (("LambdaOutput",) . toJSON) _kinesisAnalyticsV2ApplicationOutputOutputLambdaOutput
    , fmap (("Name",) . toJSON) _kinesisAnalyticsV2ApplicationOutputOutputName
    ]

instance FromJSON KinesisAnalyticsV2ApplicationOutputOutput where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationOutputOutput <$>
      (obj .: "DestinationSchema") <*>
      (obj .:? "KinesisFirehoseOutput") <*>
      (obj .:? "KinesisStreamsOutput") <*>
      (obj .:? "LambdaOutput") <*>
      (obj .:? "Name")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationOutputOutput' containing
-- required fields as arguments.
kinesisAnalyticsV2ApplicationOutputOutput
  :: KinesisAnalyticsV2ApplicationOutputDestinationSchema -- ^ 'kavaooDestinationSchema'
  -> KinesisAnalyticsV2ApplicationOutputOutput
kinesisAnalyticsV2ApplicationOutputOutput destinationSchemaarg =
  KinesisAnalyticsV2ApplicationOutputOutput
  { _kinesisAnalyticsV2ApplicationOutputOutputDestinationSchema = destinationSchemaarg
  , _kinesisAnalyticsV2ApplicationOutputOutputKinesisFirehoseOutput = Nothing
  , _kinesisAnalyticsV2ApplicationOutputOutputKinesisStreamsOutput = Nothing
  , _kinesisAnalyticsV2ApplicationOutputOutputLambdaOutput = Nothing
  , _kinesisAnalyticsV2ApplicationOutputOutputName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html#cfn-kinesisanalyticsv2-applicationoutput-output-destinationschema
kavaooDestinationSchema :: Lens' KinesisAnalyticsV2ApplicationOutputOutput KinesisAnalyticsV2ApplicationOutputDestinationSchema
kavaooDestinationSchema = lens _kinesisAnalyticsV2ApplicationOutputOutputDestinationSchema (\s a -> s { _kinesisAnalyticsV2ApplicationOutputOutputDestinationSchema = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html#cfn-kinesisanalyticsv2-applicationoutput-output-kinesisfirehoseoutput
kavaooKinesisFirehoseOutput :: Lens' KinesisAnalyticsV2ApplicationOutputOutput (Maybe KinesisAnalyticsV2ApplicationOutputKinesisFirehoseOutput)
kavaooKinesisFirehoseOutput = lens _kinesisAnalyticsV2ApplicationOutputOutputKinesisFirehoseOutput (\s a -> s { _kinesisAnalyticsV2ApplicationOutputOutputKinesisFirehoseOutput = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html#cfn-kinesisanalyticsv2-applicationoutput-output-kinesisstreamsoutput
kavaooKinesisStreamsOutput :: Lens' KinesisAnalyticsV2ApplicationOutputOutput (Maybe KinesisAnalyticsV2ApplicationOutputKinesisStreamsOutput)
kavaooKinesisStreamsOutput = lens _kinesisAnalyticsV2ApplicationOutputOutputKinesisStreamsOutput (\s a -> s { _kinesisAnalyticsV2ApplicationOutputOutputKinesisStreamsOutput = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html#cfn-kinesisanalyticsv2-applicationoutput-output-lambdaoutput
kavaooLambdaOutput :: Lens' KinesisAnalyticsV2ApplicationOutputOutput (Maybe KinesisAnalyticsV2ApplicationOutputLambdaOutput)
kavaooLambdaOutput = lens _kinesisAnalyticsV2ApplicationOutputOutputLambdaOutput (\s a -> s { _kinesisAnalyticsV2ApplicationOutputOutputLambdaOutput = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationoutput-output.html#cfn-kinesisanalyticsv2-applicationoutput-output-name
kavaooName :: Lens' KinesisAnalyticsV2ApplicationOutputOutput (Maybe (Val Text))
kavaooName = lens _kinesisAnalyticsV2ApplicationOutputOutputName (\s a -> s { _kinesisAnalyticsV2ApplicationOutputOutputName = a })
