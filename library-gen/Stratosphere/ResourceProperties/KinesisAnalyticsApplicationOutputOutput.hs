{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationOutputOutput where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationOutputDestinationSchema
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationOutputKinesisFirehoseOutput
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationOutputKinesisStreamsOutput
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationOutputLambdaOutput

-- | Full data type definition for KinesisAnalyticsApplicationOutputOutput.
-- See 'kinesisAnalyticsApplicationOutputOutput' for a more convenient
-- constructor.
data KinesisAnalyticsApplicationOutputOutput =
  KinesisAnalyticsApplicationOutputOutput
  { _kinesisAnalyticsApplicationOutputOutputDestinationSchema :: KinesisAnalyticsApplicationOutputDestinationSchema
  , _kinesisAnalyticsApplicationOutputOutputKinesisFirehoseOutput :: Maybe KinesisAnalyticsApplicationOutputKinesisFirehoseOutput
  , _kinesisAnalyticsApplicationOutputOutputKinesisStreamsOutput :: Maybe KinesisAnalyticsApplicationOutputKinesisStreamsOutput
  , _kinesisAnalyticsApplicationOutputOutputLambdaOutput :: Maybe KinesisAnalyticsApplicationOutputLambdaOutput
  , _kinesisAnalyticsApplicationOutputOutputName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationOutputOutput where
  toJSON KinesisAnalyticsApplicationOutputOutput{..} =
    object $
    catMaybes
    [ (Just . ("DestinationSchema",) . toJSON) _kinesisAnalyticsApplicationOutputOutputDestinationSchema
    , fmap (("KinesisFirehoseOutput",) . toJSON) _kinesisAnalyticsApplicationOutputOutputKinesisFirehoseOutput
    , fmap (("KinesisStreamsOutput",) . toJSON) _kinesisAnalyticsApplicationOutputOutputKinesisStreamsOutput
    , fmap (("LambdaOutput",) . toJSON) _kinesisAnalyticsApplicationOutputOutputLambdaOutput
    , fmap (("Name",) . toJSON) _kinesisAnalyticsApplicationOutputOutputName
    ]

instance FromJSON KinesisAnalyticsApplicationOutputOutput where
  parseJSON (Object obj) =
    KinesisAnalyticsApplicationOutputOutput <$>
      (obj .: "DestinationSchema") <*>
      (obj .:? "KinesisFirehoseOutput") <*>
      (obj .:? "KinesisStreamsOutput") <*>
      (obj .:? "LambdaOutput") <*>
      (obj .:? "Name")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsApplicationOutputOutput' containing
-- required fields as arguments.
kinesisAnalyticsApplicationOutputOutput
  :: KinesisAnalyticsApplicationOutputDestinationSchema -- ^ 'kaaooDestinationSchema'
  -> KinesisAnalyticsApplicationOutputOutput
kinesisAnalyticsApplicationOutputOutput destinationSchemaarg =
  KinesisAnalyticsApplicationOutputOutput
  { _kinesisAnalyticsApplicationOutputOutputDestinationSchema = destinationSchemaarg
  , _kinesisAnalyticsApplicationOutputOutputKinesisFirehoseOutput = Nothing
  , _kinesisAnalyticsApplicationOutputOutputKinesisStreamsOutput = Nothing
  , _kinesisAnalyticsApplicationOutputOutputLambdaOutput = Nothing
  , _kinesisAnalyticsApplicationOutputOutputName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-destinationschema
kaaooDestinationSchema :: Lens' KinesisAnalyticsApplicationOutputOutput KinesisAnalyticsApplicationOutputDestinationSchema
kaaooDestinationSchema = lens _kinesisAnalyticsApplicationOutputOutputDestinationSchema (\s a -> s { _kinesisAnalyticsApplicationOutputOutputDestinationSchema = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-kinesisfirehoseoutput
kaaooKinesisFirehoseOutput :: Lens' KinesisAnalyticsApplicationOutputOutput (Maybe KinesisAnalyticsApplicationOutputKinesisFirehoseOutput)
kaaooKinesisFirehoseOutput = lens _kinesisAnalyticsApplicationOutputOutputKinesisFirehoseOutput (\s a -> s { _kinesisAnalyticsApplicationOutputOutputKinesisFirehoseOutput = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-kinesisstreamsoutput
kaaooKinesisStreamsOutput :: Lens' KinesisAnalyticsApplicationOutputOutput (Maybe KinesisAnalyticsApplicationOutputKinesisStreamsOutput)
kaaooKinesisStreamsOutput = lens _kinesisAnalyticsApplicationOutputOutputKinesisStreamsOutput (\s a -> s { _kinesisAnalyticsApplicationOutputOutputKinesisStreamsOutput = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-lambdaoutput
kaaooLambdaOutput :: Lens' KinesisAnalyticsApplicationOutputOutput (Maybe KinesisAnalyticsApplicationOutputLambdaOutput)
kaaooLambdaOutput = lens _kinesisAnalyticsApplicationOutputOutputLambdaOutput (\s a -> s { _kinesisAnalyticsApplicationOutputOutputLambdaOutput = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationoutput-output.html#cfn-kinesisanalytics-applicationoutput-output-name
kaaooName :: Lens' KinesisAnalyticsApplicationOutputOutput (Maybe (Val Text))
kaaooName = lens _kinesisAnalyticsApplicationOutputOutputName (\s a -> s { _kinesisAnalyticsApplicationOutputOutputName = a })
