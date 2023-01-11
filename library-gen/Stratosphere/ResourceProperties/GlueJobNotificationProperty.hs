
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-notificationproperty.html

module Stratosphere.ResourceProperties.GlueJobNotificationProperty where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for GlueJobNotificationProperty. See
-- 'glueJobNotificationProperty' for a more convenient constructor.
data GlueJobNotificationProperty =
  GlueJobNotificationProperty
  { _glueJobNotificationPropertyNotifyDelayAfter :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON GlueJobNotificationProperty where
  toJSON GlueJobNotificationProperty{..} =
    object $
    catMaybes
    [ fmap (("NotifyDelayAfter",) . toJSON) _glueJobNotificationPropertyNotifyDelayAfter
    ]

-- | Constructor for 'GlueJobNotificationProperty' containing required fields
-- as arguments.
glueJobNotificationProperty
  :: GlueJobNotificationProperty
glueJobNotificationProperty  =
  GlueJobNotificationProperty
  { _glueJobNotificationPropertyNotifyDelayAfter = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-notificationproperty.html#cfn-glue-job-notificationproperty-notifydelayafter
gjnpNotifyDelayAfter :: Lens' GlueJobNotificationProperty (Maybe (Val Integer))
gjnpNotifyDelayAfter = lens _glueJobNotificationPropertyNotifyDelayAfter (\s a -> s { _glueJobNotificationPropertyNotifyDelayAfter = a })
