
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html

module Stratosphere.ResourceProperties.GlueTriggerAction where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlueTriggerNotificationProperty

-- | Full data type definition for GlueTriggerAction. See 'glueTriggerAction'
-- for a more convenient constructor.
data GlueTriggerAction =
  GlueTriggerAction
  { _glueTriggerActionArguments :: Maybe Object
  , _glueTriggerActionCrawlerName :: Maybe (Val Text)
  , _glueTriggerActionJobName :: Maybe (Val Text)
  , _glueTriggerActionNotificationProperty :: Maybe GlueTriggerNotificationProperty
  , _glueTriggerActionSecurityConfiguration :: Maybe (Val Text)
  , _glueTriggerActionTimeout :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON GlueTriggerAction where
  toJSON GlueTriggerAction{..} =
    object $
    catMaybes
    [ fmap (("Arguments",) . toJSON) _glueTriggerActionArguments
    , fmap (("CrawlerName",) . toJSON) _glueTriggerActionCrawlerName
    , fmap (("JobName",) . toJSON) _glueTriggerActionJobName
    , fmap (("NotificationProperty",) . toJSON) _glueTriggerActionNotificationProperty
    , fmap (("SecurityConfiguration",) . toJSON) _glueTriggerActionSecurityConfiguration
    , fmap (("Timeout",) . toJSON) _glueTriggerActionTimeout
    ]

-- | Constructor for 'GlueTriggerAction' containing required fields as
-- arguments.
glueTriggerAction
  :: GlueTriggerAction
glueTriggerAction  =
  GlueTriggerAction
  { _glueTriggerActionArguments = Nothing
  , _glueTriggerActionCrawlerName = Nothing
  , _glueTriggerActionJobName = Nothing
  , _glueTriggerActionNotificationProperty = Nothing
  , _glueTriggerActionSecurityConfiguration = Nothing
  , _glueTriggerActionTimeout = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html#cfn-glue-trigger-action-arguments
gtaArguments :: Lens' GlueTriggerAction (Maybe Object)
gtaArguments = lens _glueTriggerActionArguments (\s a -> s { _glueTriggerActionArguments = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html#cfn-glue-trigger-action-crawlername
gtaCrawlerName :: Lens' GlueTriggerAction (Maybe (Val Text))
gtaCrawlerName = lens _glueTriggerActionCrawlerName (\s a -> s { _glueTriggerActionCrawlerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html#cfn-glue-trigger-action-jobname
gtaJobName :: Lens' GlueTriggerAction (Maybe (Val Text))
gtaJobName = lens _glueTriggerActionJobName (\s a -> s { _glueTriggerActionJobName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html#cfn-glue-trigger-action-notificationproperty
gtaNotificationProperty :: Lens' GlueTriggerAction (Maybe GlueTriggerNotificationProperty)
gtaNotificationProperty = lens _glueTriggerActionNotificationProperty (\s a -> s { _glueTriggerActionNotificationProperty = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html#cfn-glue-trigger-action-securityconfiguration
gtaSecurityConfiguration :: Lens' GlueTriggerAction (Maybe (Val Text))
gtaSecurityConfiguration = lens _glueTriggerActionSecurityConfiguration (\s a -> s { _glueTriggerActionSecurityConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-action.html#cfn-glue-trigger-action-timeout
gtaTimeout :: Lens' GlueTriggerAction (Maybe (Val Integer))
gtaTimeout = lens _glueTriggerActionTimeout (\s a -> s { _glueTriggerActionTimeout = a })
