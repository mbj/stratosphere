{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationInput where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationInputParallelism
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationInputProcessingConfiguration
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationInputSchema
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationKinesisFirehoseInput
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationKinesisStreamsInput

-- | Full data type definition for KinesisAnalyticsV2ApplicationInput. See
-- 'kinesisAnalyticsV2ApplicationInput' for a more convenient constructor.
data KinesisAnalyticsV2ApplicationInput =
  KinesisAnalyticsV2ApplicationInput
  { _kinesisAnalyticsV2ApplicationInputInputParallelism :: Maybe KinesisAnalyticsV2ApplicationInputParallelism
  , _kinesisAnalyticsV2ApplicationInputInputProcessingConfiguration :: Maybe KinesisAnalyticsV2ApplicationInputProcessingConfiguration
  , _kinesisAnalyticsV2ApplicationInputInputSchema :: KinesisAnalyticsV2ApplicationInputSchema
  , _kinesisAnalyticsV2ApplicationInputKinesisFirehoseInput :: Maybe KinesisAnalyticsV2ApplicationKinesisFirehoseInput
  , _kinesisAnalyticsV2ApplicationInputKinesisStreamsInput :: Maybe KinesisAnalyticsV2ApplicationKinesisStreamsInput
  , _kinesisAnalyticsV2ApplicationInputNamePrefix :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationInput where
  toJSON KinesisAnalyticsV2ApplicationInput{..} =
    object $
    catMaybes
    [ fmap (("InputParallelism",) . toJSON) _kinesisAnalyticsV2ApplicationInputInputParallelism
    , fmap (("InputProcessingConfiguration",) . toJSON) _kinesisAnalyticsV2ApplicationInputInputProcessingConfiguration
    , (Just . ("InputSchema",) . toJSON) _kinesisAnalyticsV2ApplicationInputInputSchema
    , fmap (("KinesisFirehoseInput",) . toJSON) _kinesisAnalyticsV2ApplicationInputKinesisFirehoseInput
    , fmap (("KinesisStreamsInput",) . toJSON) _kinesisAnalyticsV2ApplicationInputKinesisStreamsInput
    , (Just . ("NamePrefix",) . toJSON) _kinesisAnalyticsV2ApplicationInputNamePrefix
    ]

instance FromJSON KinesisAnalyticsV2ApplicationInput where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationInput <$>
      (obj .:? "InputParallelism") <*>
      (obj .:? "InputProcessingConfiguration") <*>
      (obj .: "InputSchema") <*>
      (obj .:? "KinesisFirehoseInput") <*>
      (obj .:? "KinesisStreamsInput") <*>
      (obj .: "NamePrefix")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationInput' containing required
-- fields as arguments.
kinesisAnalyticsV2ApplicationInput
  :: KinesisAnalyticsV2ApplicationInputSchema -- ^ 'kavaiInputSchema'
  -> Val Text -- ^ 'kavaiNamePrefix'
  -> KinesisAnalyticsV2ApplicationInput
kinesisAnalyticsV2ApplicationInput inputSchemaarg namePrefixarg =
  KinesisAnalyticsV2ApplicationInput
  { _kinesisAnalyticsV2ApplicationInputInputParallelism = Nothing
  , _kinesisAnalyticsV2ApplicationInputInputProcessingConfiguration = Nothing
  , _kinesisAnalyticsV2ApplicationInputInputSchema = inputSchemaarg
  , _kinesisAnalyticsV2ApplicationInputKinesisFirehoseInput = Nothing
  , _kinesisAnalyticsV2ApplicationInputKinesisStreamsInput = Nothing
  , _kinesisAnalyticsV2ApplicationInputNamePrefix = namePrefixarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-inputparallelism
kavaiInputParallelism :: Lens' KinesisAnalyticsV2ApplicationInput (Maybe KinesisAnalyticsV2ApplicationInputParallelism)
kavaiInputParallelism = lens _kinesisAnalyticsV2ApplicationInputInputParallelism (\s a -> s { _kinesisAnalyticsV2ApplicationInputInputParallelism = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-inputprocessingconfiguration
kavaiInputProcessingConfiguration :: Lens' KinesisAnalyticsV2ApplicationInput (Maybe KinesisAnalyticsV2ApplicationInputProcessingConfiguration)
kavaiInputProcessingConfiguration = lens _kinesisAnalyticsV2ApplicationInputInputProcessingConfiguration (\s a -> s { _kinesisAnalyticsV2ApplicationInputInputProcessingConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-inputschema
kavaiInputSchema :: Lens' KinesisAnalyticsV2ApplicationInput KinesisAnalyticsV2ApplicationInputSchema
kavaiInputSchema = lens _kinesisAnalyticsV2ApplicationInputInputSchema (\s a -> s { _kinesisAnalyticsV2ApplicationInputInputSchema = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-kinesisfirehoseinput
kavaiKinesisFirehoseInput :: Lens' KinesisAnalyticsV2ApplicationInput (Maybe KinesisAnalyticsV2ApplicationKinesisFirehoseInput)
kavaiKinesisFirehoseInput = lens _kinesisAnalyticsV2ApplicationInputKinesisFirehoseInput (\s a -> s { _kinesisAnalyticsV2ApplicationInputKinesisFirehoseInput = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-kinesisstreamsinput
kavaiKinesisStreamsInput :: Lens' KinesisAnalyticsV2ApplicationInput (Maybe KinesisAnalyticsV2ApplicationKinesisStreamsInput)
kavaiKinesisStreamsInput = lens _kinesisAnalyticsV2ApplicationInputKinesisStreamsInput (\s a -> s { _kinesisAnalyticsV2ApplicationInputKinesisStreamsInput = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-nameprefix
kavaiNamePrefix :: Lens' KinesisAnalyticsV2ApplicationInput (Val Text)
kavaiNamePrefix = lens _kinesisAnalyticsV2ApplicationInputNamePrefix (\s a -> s { _kinesisAnalyticsV2ApplicationInputNamePrefix = a })
