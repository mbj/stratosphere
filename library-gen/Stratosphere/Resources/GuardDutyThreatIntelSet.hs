{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatintelset.html

module Stratosphere.Resources.GuardDutyThreatIntelSet where

import Stratosphere.ResourceImports


-- | Full data type definition for GuardDutyThreatIntelSet. See
-- 'guardDutyThreatIntelSet' for a more convenient constructor.
data GuardDutyThreatIntelSet =
  GuardDutyThreatIntelSet
  { _guardDutyThreatIntelSetActivate :: Val Bool
  , _guardDutyThreatIntelSetDetectorId :: Val Text
  , _guardDutyThreatIntelSetFormat :: Val Text
  , _guardDutyThreatIntelSetLocation :: Val Text
  , _guardDutyThreatIntelSetName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties GuardDutyThreatIntelSet where
  toResourceProperties GuardDutyThreatIntelSet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::GuardDuty::ThreatIntelSet"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Activate",) . toJSON) _guardDutyThreatIntelSetActivate
        , (Just . ("DetectorId",) . toJSON) _guardDutyThreatIntelSetDetectorId
        , (Just . ("Format",) . toJSON) _guardDutyThreatIntelSetFormat
        , (Just . ("Location",) . toJSON) _guardDutyThreatIntelSetLocation
        , fmap (("Name",) . toJSON) _guardDutyThreatIntelSetName
        ]
    }

-- | Constructor for 'GuardDutyThreatIntelSet' containing required fields as
-- arguments.
guardDutyThreatIntelSet
  :: Val Bool -- ^ 'gdtisActivate'
  -> Val Text -- ^ 'gdtisDetectorId'
  -> Val Text -- ^ 'gdtisFormat'
  -> Val Text -- ^ 'gdtisLocation'
  -> GuardDutyThreatIntelSet
guardDutyThreatIntelSet activatearg detectorIdarg formatarg locationarg =
  GuardDutyThreatIntelSet
  { _guardDutyThreatIntelSetActivate = activatearg
  , _guardDutyThreatIntelSetDetectorId = detectorIdarg
  , _guardDutyThreatIntelSetFormat = formatarg
  , _guardDutyThreatIntelSetLocation = locationarg
  , _guardDutyThreatIntelSetName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatintelset.html#cfn-guardduty-threatintelset-activate
gdtisActivate :: Lens' GuardDutyThreatIntelSet (Val Bool)
gdtisActivate = lens _guardDutyThreatIntelSetActivate (\s a -> s { _guardDutyThreatIntelSetActivate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatintelset.html#cfn-guardduty-threatintelset-detectorid
gdtisDetectorId :: Lens' GuardDutyThreatIntelSet (Val Text)
gdtisDetectorId = lens _guardDutyThreatIntelSetDetectorId (\s a -> s { _guardDutyThreatIntelSetDetectorId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatintelset.html#cfn-guardduty-threatintelset-format
gdtisFormat :: Lens' GuardDutyThreatIntelSet (Val Text)
gdtisFormat = lens _guardDutyThreatIntelSetFormat (\s a -> s { _guardDutyThreatIntelSetFormat = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatintelset.html#cfn-guardduty-threatintelset-location
gdtisLocation :: Lens' GuardDutyThreatIntelSet (Val Text)
gdtisLocation = lens _guardDutyThreatIntelSetLocation (\s a -> s { _guardDutyThreatIntelSetLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-threatintelset.html#cfn-guardduty-threatintelset-name
gdtisName :: Lens' GuardDutyThreatIntelSet (Maybe (Val Text))
gdtisName = lens _guardDutyThreatIntelSetName (\s a -> s { _guardDutyThreatIntelSetName = a })
