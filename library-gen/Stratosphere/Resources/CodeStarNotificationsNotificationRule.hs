{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html

module Stratosphere.Resources.CodeStarNotificationsNotificationRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeStarNotificationsNotificationRuleTarget

-- | Full data type definition for CodeStarNotificationsNotificationRule. See
-- 'codeStarNotificationsNotificationRule' for a more convenient
-- constructor.
data CodeStarNotificationsNotificationRule =
  CodeStarNotificationsNotificationRule
  { _codeStarNotificationsNotificationRuleDetailType :: Val Text
  , _codeStarNotificationsNotificationRuleEventTypeIds :: ValList Text
  , _codeStarNotificationsNotificationRuleName :: Val Text
  , _codeStarNotificationsNotificationRuleResource :: Val Text
  , _codeStarNotificationsNotificationRuleStatus :: Maybe (Val Text)
  , _codeStarNotificationsNotificationRuleTags :: Maybe Object
  , _codeStarNotificationsNotificationRuleTargets :: [CodeStarNotificationsNotificationRuleTarget]
  } deriving (Show, Eq)

instance ToResourceProperties CodeStarNotificationsNotificationRule where
  toResourceProperties CodeStarNotificationsNotificationRule{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CodeStarNotifications::NotificationRule"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("DetailType",) . toJSON) _codeStarNotificationsNotificationRuleDetailType
        , (Just . ("EventTypeIds",) . toJSON) _codeStarNotificationsNotificationRuleEventTypeIds
        , (Just . ("Name",) . toJSON) _codeStarNotificationsNotificationRuleName
        , (Just . ("Resource",) . toJSON) _codeStarNotificationsNotificationRuleResource
        , fmap (("Status",) . toJSON) _codeStarNotificationsNotificationRuleStatus
        , fmap (("Tags",) . toJSON) _codeStarNotificationsNotificationRuleTags
        , (Just . ("Targets",) . toJSON) _codeStarNotificationsNotificationRuleTargets
        ]
    }

-- | Constructor for 'CodeStarNotificationsNotificationRule' containing
-- required fields as arguments.
codeStarNotificationsNotificationRule
  :: Val Text -- ^ 'csnnrDetailType'
  -> ValList Text -- ^ 'csnnrEventTypeIds'
  -> Val Text -- ^ 'csnnrName'
  -> Val Text -- ^ 'csnnrResource'
  -> [CodeStarNotificationsNotificationRuleTarget] -- ^ 'csnnrTargets'
  -> CodeStarNotificationsNotificationRule
codeStarNotificationsNotificationRule detailTypearg eventTypeIdsarg namearg resourcearg targetsarg =
  CodeStarNotificationsNotificationRule
  { _codeStarNotificationsNotificationRuleDetailType = detailTypearg
  , _codeStarNotificationsNotificationRuleEventTypeIds = eventTypeIdsarg
  , _codeStarNotificationsNotificationRuleName = namearg
  , _codeStarNotificationsNotificationRuleResource = resourcearg
  , _codeStarNotificationsNotificationRuleStatus = Nothing
  , _codeStarNotificationsNotificationRuleTags = Nothing
  , _codeStarNotificationsNotificationRuleTargets = targetsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-detailtype
csnnrDetailType :: Lens' CodeStarNotificationsNotificationRule (Val Text)
csnnrDetailType = lens _codeStarNotificationsNotificationRuleDetailType (\s a -> s { _codeStarNotificationsNotificationRuleDetailType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-eventtypeids
csnnrEventTypeIds :: Lens' CodeStarNotificationsNotificationRule (ValList Text)
csnnrEventTypeIds = lens _codeStarNotificationsNotificationRuleEventTypeIds (\s a -> s { _codeStarNotificationsNotificationRuleEventTypeIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-name
csnnrName :: Lens' CodeStarNotificationsNotificationRule (Val Text)
csnnrName = lens _codeStarNotificationsNotificationRuleName (\s a -> s { _codeStarNotificationsNotificationRuleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-resource
csnnrResource :: Lens' CodeStarNotificationsNotificationRule (Val Text)
csnnrResource = lens _codeStarNotificationsNotificationRuleResource (\s a -> s { _codeStarNotificationsNotificationRuleResource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-status
csnnrStatus :: Lens' CodeStarNotificationsNotificationRule (Maybe (Val Text))
csnnrStatus = lens _codeStarNotificationsNotificationRuleStatus (\s a -> s { _codeStarNotificationsNotificationRuleStatus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-tags
csnnrTags :: Lens' CodeStarNotificationsNotificationRule (Maybe Object)
csnnrTags = lens _codeStarNotificationsNotificationRuleTags (\s a -> s { _codeStarNotificationsNotificationRuleTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-targets
csnnrTargets :: Lens' CodeStarNotificationsNotificationRule [CodeStarNotificationsNotificationRuleTarget]
csnnrTargets = lens _codeStarNotificationsNotificationRuleTargets (\s a -> s { _codeStarNotificationsNotificationRuleTargets = a })
