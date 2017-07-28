{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationInput where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationInputParallelism
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationInputSchema
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationKinesisFirehoseInput
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationKinesisStreamsInput

-- | Full data type definition for KinesisAnalyticsApplicationInput. See
-- 'kinesisAnalyticsApplicationInput' for a more convenient constructor.
data KinesisAnalyticsApplicationInput =
  KinesisAnalyticsApplicationInput
  { _kinesisAnalyticsApplicationInputInputParallelism :: Maybe KinesisAnalyticsApplicationInputParallelism
  , _kinesisAnalyticsApplicationInputInputSchema :: KinesisAnalyticsApplicationInputSchema
  , _kinesisAnalyticsApplicationInputKinesisFirehoseInput :: Maybe KinesisAnalyticsApplicationKinesisFirehoseInput
  , _kinesisAnalyticsApplicationInputKinesisStreamsInput :: Maybe KinesisAnalyticsApplicationKinesisStreamsInput
  , _kinesisAnalyticsApplicationInputNamePrefix :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationInput where
  toJSON KinesisAnalyticsApplicationInput{..} =
    object $
    catMaybes
    [ fmap (("InputParallelism",) . toJSON) _kinesisAnalyticsApplicationInputInputParallelism
    , (Just . ("InputSchema",) . toJSON) _kinesisAnalyticsApplicationInputInputSchema
    , fmap (("KinesisFirehoseInput",) . toJSON) _kinesisAnalyticsApplicationInputKinesisFirehoseInput
    , fmap (("KinesisStreamsInput",) . toJSON) _kinesisAnalyticsApplicationInputKinesisStreamsInput
    , (Just . ("NamePrefix",) . toJSON) _kinesisAnalyticsApplicationInputNamePrefix
    ]

instance FromJSON KinesisAnalyticsApplicationInput where
  parseJSON (Object obj) =
    KinesisAnalyticsApplicationInput <$>
      (obj .:? "InputParallelism") <*>
      (obj .: "InputSchema") <*>
      (obj .:? "KinesisFirehoseInput") <*>
      (obj .:? "KinesisStreamsInput") <*>
      (obj .: "NamePrefix")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsApplicationInput' containing required
-- fields as arguments.
kinesisAnalyticsApplicationInput
  :: KinesisAnalyticsApplicationInputSchema -- ^ 'kaaiInputSchema'
  -> Val Text -- ^ 'kaaiNamePrefix'
  -> KinesisAnalyticsApplicationInput
kinesisAnalyticsApplicationInput inputSchemaarg namePrefixarg =
  KinesisAnalyticsApplicationInput
  { _kinesisAnalyticsApplicationInputInputParallelism = Nothing
  , _kinesisAnalyticsApplicationInputInputSchema = inputSchemaarg
  , _kinesisAnalyticsApplicationInputKinesisFirehoseInput = Nothing
  , _kinesisAnalyticsApplicationInputKinesisStreamsInput = Nothing
  , _kinesisAnalyticsApplicationInputNamePrefix = namePrefixarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html#cfn-kinesisanalytics-application-input-inputparallelism
kaaiInputParallelism :: Lens' KinesisAnalyticsApplicationInput (Maybe KinesisAnalyticsApplicationInputParallelism)
kaaiInputParallelism = lens _kinesisAnalyticsApplicationInputInputParallelism (\s a -> s { _kinesisAnalyticsApplicationInputInputParallelism = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html#cfn-kinesisanalytics-application-input-inputschema
kaaiInputSchema :: Lens' KinesisAnalyticsApplicationInput KinesisAnalyticsApplicationInputSchema
kaaiInputSchema = lens _kinesisAnalyticsApplicationInputInputSchema (\s a -> s { _kinesisAnalyticsApplicationInputInputSchema = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html#cfn-kinesisanalytics-application-input-kinesisfirehoseinput
kaaiKinesisFirehoseInput :: Lens' KinesisAnalyticsApplicationInput (Maybe KinesisAnalyticsApplicationKinesisFirehoseInput)
kaaiKinesisFirehoseInput = lens _kinesisAnalyticsApplicationInputKinesisFirehoseInput (\s a -> s { _kinesisAnalyticsApplicationInputKinesisFirehoseInput = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html#cfn-kinesisanalytics-application-input-kinesisstreamsinput
kaaiKinesisStreamsInput :: Lens' KinesisAnalyticsApplicationInput (Maybe KinesisAnalyticsApplicationKinesisStreamsInput)
kaaiKinesisStreamsInput = lens _kinesisAnalyticsApplicationInputKinesisStreamsInput (\s a -> s { _kinesisAnalyticsApplicationInputKinesisStreamsInput = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html#cfn-kinesisanalytics-application-input-nameprefix
kaaiNamePrefix :: Lens' KinesisAnalyticsApplicationInput (Val Text)
kaaiNamePrefix = lens _kinesisAnalyticsApplicationInputNamePrefix (\s a -> s { _kinesisAnalyticsApplicationInputNamePrefix = a })
