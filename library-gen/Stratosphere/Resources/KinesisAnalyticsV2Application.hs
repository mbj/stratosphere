{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html

module Stratosphere.Resources.KinesisAnalyticsV2Application where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationApplicationConfiguration
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for KinesisAnalyticsV2Application. See
-- 'kinesisAnalyticsV2Application' for a more convenient constructor.
data KinesisAnalyticsV2Application =
  KinesisAnalyticsV2Application
  { _kinesisAnalyticsV2ApplicationApplicationConfiguration :: Maybe KinesisAnalyticsV2ApplicationApplicationConfiguration
  , _kinesisAnalyticsV2ApplicationApplicationDescription :: Maybe (Val Text)
  , _kinesisAnalyticsV2ApplicationApplicationName :: Maybe (Val Text)
  , _kinesisAnalyticsV2ApplicationRuntimeEnvironment :: Val Text
  , _kinesisAnalyticsV2ApplicationServiceExecutionRole :: Val Text
  , _kinesisAnalyticsV2ApplicationTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties KinesisAnalyticsV2Application where
  toResourceProperties KinesisAnalyticsV2Application{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::KinesisAnalyticsV2::Application"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ApplicationConfiguration",) . toJSON) _kinesisAnalyticsV2ApplicationApplicationConfiguration
        , fmap (("ApplicationDescription",) . toJSON) _kinesisAnalyticsV2ApplicationApplicationDescription
        , fmap (("ApplicationName",) . toJSON) _kinesisAnalyticsV2ApplicationApplicationName
        , (Just . ("RuntimeEnvironment",) . toJSON) _kinesisAnalyticsV2ApplicationRuntimeEnvironment
        , (Just . ("ServiceExecutionRole",) . toJSON) _kinesisAnalyticsV2ApplicationServiceExecutionRole
        , fmap (("Tags",) . toJSON) _kinesisAnalyticsV2ApplicationTags
        ]
    }

-- | Constructor for 'KinesisAnalyticsV2Application' containing required
-- fields as arguments.
kinesisAnalyticsV2Application
  :: Val Text -- ^ 'kavaRuntimeEnvironment'
  -> Val Text -- ^ 'kavaServiceExecutionRole'
  -> KinesisAnalyticsV2Application
kinesisAnalyticsV2Application runtimeEnvironmentarg serviceExecutionRolearg =
  KinesisAnalyticsV2Application
  { _kinesisAnalyticsV2ApplicationApplicationConfiguration = Nothing
  , _kinesisAnalyticsV2ApplicationApplicationDescription = Nothing
  , _kinesisAnalyticsV2ApplicationApplicationName = Nothing
  , _kinesisAnalyticsV2ApplicationRuntimeEnvironment = runtimeEnvironmentarg
  , _kinesisAnalyticsV2ApplicationServiceExecutionRole = serviceExecutionRolearg
  , _kinesisAnalyticsV2ApplicationTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html#cfn-kinesisanalyticsv2-application-applicationconfiguration
kavaApplicationConfiguration :: Lens' KinesisAnalyticsV2Application (Maybe KinesisAnalyticsV2ApplicationApplicationConfiguration)
kavaApplicationConfiguration = lens _kinesisAnalyticsV2ApplicationApplicationConfiguration (\s a -> s { _kinesisAnalyticsV2ApplicationApplicationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html#cfn-kinesisanalyticsv2-application-applicationdescription
kavaApplicationDescription :: Lens' KinesisAnalyticsV2Application (Maybe (Val Text))
kavaApplicationDescription = lens _kinesisAnalyticsV2ApplicationApplicationDescription (\s a -> s { _kinesisAnalyticsV2ApplicationApplicationDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html#cfn-kinesisanalyticsv2-application-applicationname
kavaApplicationName :: Lens' KinesisAnalyticsV2Application (Maybe (Val Text))
kavaApplicationName = lens _kinesisAnalyticsV2ApplicationApplicationName (\s a -> s { _kinesisAnalyticsV2ApplicationApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html#cfn-kinesisanalyticsv2-application-runtimeenvironment
kavaRuntimeEnvironment :: Lens' KinesisAnalyticsV2Application (Val Text)
kavaRuntimeEnvironment = lens _kinesisAnalyticsV2ApplicationRuntimeEnvironment (\s a -> s { _kinesisAnalyticsV2ApplicationRuntimeEnvironment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html#cfn-kinesisanalyticsv2-application-serviceexecutionrole
kavaServiceExecutionRole :: Lens' KinesisAnalyticsV2Application (Val Text)
kavaServiceExecutionRole = lens _kinesisAnalyticsV2ApplicationServiceExecutionRole (\s a -> s { _kinesisAnalyticsV2ApplicationServiceExecutionRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html#cfn-kinesisanalyticsv2-application-tags
kavaTags :: Lens' KinesisAnalyticsV2Application (Maybe [Tag])
kavaTags = lens _kinesisAnalyticsV2ApplicationTags (\s a -> s { _kinesisAnalyticsV2ApplicationTags = a })
