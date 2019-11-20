{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestarnotifications-notificationrule-target.html

module Stratosphere.ResourceProperties.CodeStarNotificationsNotificationRuleTarget where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- CodeStarNotificationsNotificationRuleTarget. See
-- 'codeStarNotificationsNotificationRuleTarget' for a more convenient
-- constructor.
data CodeStarNotificationsNotificationRuleTarget =
  CodeStarNotificationsNotificationRuleTarget
  { _codeStarNotificationsNotificationRuleTargetTargetAddress :: Maybe (Val Text)
  , _codeStarNotificationsNotificationRuleTargetTargetType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodeStarNotificationsNotificationRuleTarget where
  toJSON CodeStarNotificationsNotificationRuleTarget{..} =
    object $
    catMaybes
    [ fmap (("TargetAddress",) . toJSON) _codeStarNotificationsNotificationRuleTargetTargetAddress
    , fmap (("TargetType",) . toJSON) _codeStarNotificationsNotificationRuleTargetTargetType
    ]

-- | Constructor for 'CodeStarNotificationsNotificationRuleTarget' containing
-- required fields as arguments.
codeStarNotificationsNotificationRuleTarget
  :: CodeStarNotificationsNotificationRuleTarget
codeStarNotificationsNotificationRuleTarget  =
  CodeStarNotificationsNotificationRuleTarget
  { _codeStarNotificationsNotificationRuleTargetTargetAddress = Nothing
  , _codeStarNotificationsNotificationRuleTargetTargetType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestarnotifications-notificationrule-target.html#cfn-codestarnotifications-notificationrule-target-targetaddress
csnnrtTargetAddress :: Lens' CodeStarNotificationsNotificationRuleTarget (Maybe (Val Text))
csnnrtTargetAddress = lens _codeStarNotificationsNotificationRuleTargetTargetAddress (\s a -> s { _codeStarNotificationsNotificationRuleTargetTargetAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestarnotifications-notificationrule-target.html#cfn-codestarnotifications-notificationrule-target-targettype
csnnrtTargetType :: Lens' CodeStarNotificationsNotificationRuleTarget (Maybe (Val Text))
csnnrtTargetType = lens _codeStarNotificationsNotificationRuleTargetTargetType (\s a -> s { _codeStarNotificationsNotificationRuleTargetTargetType = a })
