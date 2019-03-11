{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-codecontent.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationCodeContent where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationS3ContentLocation

-- | Full data type definition for KinesisAnalyticsV2ApplicationCodeContent.
-- See 'kinesisAnalyticsV2ApplicationCodeContent' for a more convenient
-- constructor.
data KinesisAnalyticsV2ApplicationCodeContent =
  KinesisAnalyticsV2ApplicationCodeContent
  { _kinesisAnalyticsV2ApplicationCodeContentS3ContentLocation :: Maybe KinesisAnalyticsV2ApplicationS3ContentLocation
  , _kinesisAnalyticsV2ApplicationCodeContentTextContent :: Maybe (Val Text)
  , _kinesisAnalyticsV2ApplicationCodeContentZipFileContent :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationCodeContent where
  toJSON KinesisAnalyticsV2ApplicationCodeContent{..} =
    object $
    catMaybes
    [ fmap (("S3ContentLocation",) . toJSON) _kinesisAnalyticsV2ApplicationCodeContentS3ContentLocation
    , fmap (("TextContent",) . toJSON) _kinesisAnalyticsV2ApplicationCodeContentTextContent
    , fmap (("ZipFileContent",) . toJSON) _kinesisAnalyticsV2ApplicationCodeContentZipFileContent
    ]

instance FromJSON KinesisAnalyticsV2ApplicationCodeContent where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationCodeContent <$>
      (obj .:? "S3ContentLocation") <*>
      (obj .:? "TextContent") <*>
      (obj .:? "ZipFileContent")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsV2ApplicationCodeContent' containing
-- required fields as arguments.
kinesisAnalyticsV2ApplicationCodeContent
  :: KinesisAnalyticsV2ApplicationCodeContent
kinesisAnalyticsV2ApplicationCodeContent  =
  KinesisAnalyticsV2ApplicationCodeContent
  { _kinesisAnalyticsV2ApplicationCodeContentS3ContentLocation = Nothing
  , _kinesisAnalyticsV2ApplicationCodeContentTextContent = Nothing
  , _kinesisAnalyticsV2ApplicationCodeContentZipFileContent = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-codecontent.html#cfn-kinesisanalyticsv2-application-codecontent-s3contentlocation
kavaccS3ContentLocation :: Lens' KinesisAnalyticsV2ApplicationCodeContent (Maybe KinesisAnalyticsV2ApplicationS3ContentLocation)
kavaccS3ContentLocation = lens _kinesisAnalyticsV2ApplicationCodeContentS3ContentLocation (\s a -> s { _kinesisAnalyticsV2ApplicationCodeContentS3ContentLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-codecontent.html#cfn-kinesisanalyticsv2-application-codecontent-textcontent
kavaccTextContent :: Lens' KinesisAnalyticsV2ApplicationCodeContent (Maybe (Val Text))
kavaccTextContent = lens _kinesisAnalyticsV2ApplicationCodeContentTextContent (\s a -> s { _kinesisAnalyticsV2ApplicationCodeContentTextContent = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-codecontent.html#cfn-kinesisanalyticsv2-application-codecontent-zipfilecontent
kavaccZipFileContent :: Lens' KinesisAnalyticsV2ApplicationCodeContent (Maybe (Val Text))
kavaccZipFileContent = lens _kinesisAnalyticsV2ApplicationCodeContentZipFileContent (\s a -> s { _kinesisAnalyticsV2ApplicationCodeContentZipFileContent = a })
