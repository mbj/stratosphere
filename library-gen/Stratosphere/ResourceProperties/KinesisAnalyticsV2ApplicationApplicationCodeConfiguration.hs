{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationcodeconfiguration.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationApplicationCodeConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationCodeContent

-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationApplicationCodeConfiguration. See
-- 'kinesisAnalyticsV2ApplicationApplicationCodeConfiguration' for a more
-- convenient constructor.
data KinesisAnalyticsV2ApplicationApplicationCodeConfiguration =
  KinesisAnalyticsV2ApplicationApplicationCodeConfiguration
  { _kinesisAnalyticsV2ApplicationApplicationCodeConfigurationCodeContent :: KinesisAnalyticsV2ApplicationCodeContent
  , _kinesisAnalyticsV2ApplicationApplicationCodeConfigurationCodeContentType :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationApplicationCodeConfiguration where
  toJSON KinesisAnalyticsV2ApplicationApplicationCodeConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("CodeContent",) . toJSON) _kinesisAnalyticsV2ApplicationApplicationCodeConfigurationCodeContent
    , (Just . ("CodeContentType",) . toJSON) _kinesisAnalyticsV2ApplicationApplicationCodeConfigurationCodeContentType
    ]

instance FromJSON KinesisAnalyticsV2ApplicationApplicationCodeConfiguration where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationApplicationCodeConfiguration <$>
      (obj .: "CodeContent") <*>
      (obj .: "CodeContentType")
  parseJSON _ = mempty

-- | Constructor for
-- 'KinesisAnalyticsV2ApplicationApplicationCodeConfiguration' containing
-- required fields as arguments.
kinesisAnalyticsV2ApplicationApplicationCodeConfiguration
  :: KinesisAnalyticsV2ApplicationCodeContent -- ^ 'kavaaccCodeContent'
  -> Val Text -- ^ 'kavaaccCodeContentType'
  -> KinesisAnalyticsV2ApplicationApplicationCodeConfiguration
kinesisAnalyticsV2ApplicationApplicationCodeConfiguration codeContentarg codeContentTypearg =
  KinesisAnalyticsV2ApplicationApplicationCodeConfiguration
  { _kinesisAnalyticsV2ApplicationApplicationCodeConfigurationCodeContent = codeContentarg
  , _kinesisAnalyticsV2ApplicationApplicationCodeConfigurationCodeContentType = codeContentTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationcodeconfiguration.html#cfn-kinesisanalyticsv2-application-applicationcodeconfiguration-codecontent
kavaaccCodeContent :: Lens' KinesisAnalyticsV2ApplicationApplicationCodeConfiguration KinesisAnalyticsV2ApplicationCodeContent
kavaaccCodeContent = lens _kinesisAnalyticsV2ApplicationApplicationCodeConfigurationCodeContent (\s a -> s { _kinesisAnalyticsV2ApplicationApplicationCodeConfigurationCodeContent = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationcodeconfiguration.html#cfn-kinesisanalyticsv2-application-applicationcodeconfiguration-codecontenttype
kavaaccCodeContentType :: Lens' KinesisAnalyticsV2ApplicationApplicationCodeConfiguration (Val Text)
kavaaccCodeContentType = lens _kinesisAnalyticsV2ApplicationApplicationCodeConfigurationCodeContentType (\s a -> s { _kinesisAnalyticsV2ApplicationApplicationCodeConfigurationCodeContentType = a })
