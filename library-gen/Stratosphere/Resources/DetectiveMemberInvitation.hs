{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-detective-memberinvitation.html

module Stratosphere.Resources.DetectiveMemberInvitation where

import Stratosphere.ResourceImports


-- | Full data type definition for DetectiveMemberInvitation. See
-- 'detectiveMemberInvitation' for a more convenient constructor.
data DetectiveMemberInvitation =
  DetectiveMemberInvitation
  { _detectiveMemberInvitationGraphArn :: Val Text
  , _detectiveMemberInvitationMemberEmailAddress :: Val Text
  , _detectiveMemberInvitationMemberId :: Val Text
  , _detectiveMemberInvitationMessage :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties DetectiveMemberInvitation where
  toResourceProperties DetectiveMemberInvitation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Detective::MemberInvitation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("GraphArn",) . toJSON) _detectiveMemberInvitationGraphArn
        , (Just . ("MemberEmailAddress",) . toJSON) _detectiveMemberInvitationMemberEmailAddress
        , (Just . ("MemberId",) . toJSON) _detectiveMemberInvitationMemberId
        , fmap (("Message",) . toJSON) _detectiveMemberInvitationMessage
        ]
    }

-- | Constructor for 'DetectiveMemberInvitation' containing required fields as
-- arguments.
detectiveMemberInvitation
  :: Val Text -- ^ 'dmiGraphArn'
  -> Val Text -- ^ 'dmiMemberEmailAddress'
  -> Val Text -- ^ 'dmiMemberId'
  -> DetectiveMemberInvitation
detectiveMemberInvitation graphArnarg memberEmailAddressarg memberIdarg =
  DetectiveMemberInvitation
  { _detectiveMemberInvitationGraphArn = graphArnarg
  , _detectiveMemberInvitationMemberEmailAddress = memberEmailAddressarg
  , _detectiveMemberInvitationMemberId = memberIdarg
  , _detectiveMemberInvitationMessage = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-detective-memberinvitation.html#cfn-detective-memberinvitation-grapharn
dmiGraphArn :: Lens' DetectiveMemberInvitation (Val Text)
dmiGraphArn = lens _detectiveMemberInvitationGraphArn (\s a -> s { _detectiveMemberInvitationGraphArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-detective-memberinvitation.html#cfn-detective-memberinvitation-memberemailaddress
dmiMemberEmailAddress :: Lens' DetectiveMemberInvitation (Val Text)
dmiMemberEmailAddress = lens _detectiveMemberInvitationMemberEmailAddress (\s a -> s { _detectiveMemberInvitationMemberEmailAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-detective-memberinvitation.html#cfn-detective-memberinvitation-memberid
dmiMemberId :: Lens' DetectiveMemberInvitation (Val Text)
dmiMemberId = lens _detectiveMemberInvitationMemberId (\s a -> s { _detectiveMemberInvitationMemberId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-detective-memberinvitation.html#cfn-detective-memberinvitation-message
dmiMessage :: Lens' DetectiveMemberInvitation (Maybe (Val Text))
dmiMessage = lens _detectiveMemberInvitationMessage (\s a -> s { _detectiveMemberInvitationMessage = a })
