{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-member.html

module Stratosphere.Resources.GuardDutyMember where

import Stratosphere.ResourceImports


-- | Full data type definition for GuardDutyMember. See 'guardDutyMember' for
-- a more convenient constructor.
data GuardDutyMember =
  GuardDutyMember
  { _guardDutyMemberDetectorId :: Val Text
  , _guardDutyMemberEmail :: Val Text
  , _guardDutyMemberMemberId :: Val Text
  , _guardDutyMemberMessage :: Maybe (Val Text)
  , _guardDutyMemberStatus :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GuardDutyMember where
  toJSON GuardDutyMember{..} =
    object $
    catMaybes
    [ (Just . ("DetectorId",) . toJSON) _guardDutyMemberDetectorId
    , (Just . ("Email",) . toJSON) _guardDutyMemberEmail
    , (Just . ("MemberId",) . toJSON) _guardDutyMemberMemberId
    , fmap (("Message",) . toJSON) _guardDutyMemberMessage
    , fmap (("Status",) . toJSON) _guardDutyMemberStatus
    ]

instance FromJSON GuardDutyMember where
  parseJSON (Object obj) =
    GuardDutyMember <$>
      (obj .: "DetectorId") <*>
      (obj .: "Email") <*>
      (obj .: "MemberId") <*>
      (obj .:? "Message") <*>
      (obj .:? "Status")
  parseJSON _ = mempty

-- | Constructor for 'GuardDutyMember' containing required fields as
-- arguments.
guardDutyMember
  :: Val Text -- ^ 'gdmeDetectorId'
  -> Val Text -- ^ 'gdmeEmail'
  -> Val Text -- ^ 'gdmeMemberId'
  -> GuardDutyMember
guardDutyMember detectorIdarg emailarg memberIdarg =
  GuardDutyMember
  { _guardDutyMemberDetectorId = detectorIdarg
  , _guardDutyMemberEmail = emailarg
  , _guardDutyMemberMemberId = memberIdarg
  , _guardDutyMemberMessage = Nothing
  , _guardDutyMemberStatus = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-member.html#cfn-guardduty-member-detectorid
gdmeDetectorId :: Lens' GuardDutyMember (Val Text)
gdmeDetectorId = lens _guardDutyMemberDetectorId (\s a -> s { _guardDutyMemberDetectorId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-member.html#cfn-guardduty-member-email
gdmeEmail :: Lens' GuardDutyMember (Val Text)
gdmeEmail = lens _guardDutyMemberEmail (\s a -> s { _guardDutyMemberEmail = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-member.html#cfn-guardduty-member-memberid
gdmeMemberId :: Lens' GuardDutyMember (Val Text)
gdmeMemberId = lens _guardDutyMemberMemberId (\s a -> s { _guardDutyMemberMemberId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-member.html#cfn-guardduty-member-message
gdmeMessage :: Lens' GuardDutyMember (Maybe (Val Text))
gdmeMessage = lens _guardDutyMemberMessage (\s a -> s { _guardDutyMemberMessage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-member.html#cfn-guardduty-member-status
gdmeStatus :: Lens' GuardDutyMember (Maybe (Val Text))
gdmeStatus = lens _guardDutyMemberStatus (\s a -> s { _guardDutyMemberStatus = a })
