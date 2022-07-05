{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-master.html

module Stratosphere.Resources.GuardDutyMaster where

import Stratosphere.ResourceImports


-- | Full data type definition for GuardDutyMaster. See 'guardDutyMaster' for
-- a more convenient constructor.
data GuardDutyMaster =
  GuardDutyMaster
  { _guardDutyMasterDetectorId :: Val Text
  , _guardDutyMasterInvitationId :: Maybe (Val Text)
  , _guardDutyMasterMasterId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties GuardDutyMaster where
  toResourceProperties GuardDutyMaster{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::GuardDuty::Master"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("DetectorId",) . toJSON) _guardDutyMasterDetectorId
        , fmap (("InvitationId",) . toJSON) _guardDutyMasterInvitationId
        , (Just . ("MasterId",) . toJSON) _guardDutyMasterMasterId
        ]
    }

-- | Constructor for 'GuardDutyMaster' containing required fields as
-- arguments.
guardDutyMaster
  :: Val Text -- ^ 'gdmaDetectorId'
  -> Val Text -- ^ 'gdmaMasterId'
  -> GuardDutyMaster
guardDutyMaster detectorIdarg masterIdarg =
  GuardDutyMaster
  { _guardDutyMasterDetectorId = detectorIdarg
  , _guardDutyMasterInvitationId = Nothing
  , _guardDutyMasterMasterId = masterIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-master.html#cfn-guardduty-master-detectorid
gdmaDetectorId :: Lens' GuardDutyMaster (Val Text)
gdmaDetectorId = lens _guardDutyMasterDetectorId (\s a -> s { _guardDutyMasterDetectorId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-master.html#cfn-guardduty-master-invitationid
gdmaInvitationId :: Lens' GuardDutyMaster (Maybe (Val Text))
gdmaInvitationId = lens _guardDutyMasterInvitationId (\s a -> s { _guardDutyMasterInvitationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-master.html#cfn-guardduty-master-masterid
gdmaMasterId :: Lens' GuardDutyMaster (Val Text)
gdmaMasterId = lens _guardDutyMasterMasterId (\s a -> s { _guardDutyMasterMasterId = a })
