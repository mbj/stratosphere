{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-ipset.html

module Stratosphere.Resources.GuardDutyIPSet where

import Stratosphere.ResourceImports


-- | Full data type definition for GuardDutyIPSet. See 'guardDutyIPSet' for a
-- more convenient constructor.
data GuardDutyIPSet =
  GuardDutyIPSet
  { _guardDutyIPSetActivate :: Val Bool
  , _guardDutyIPSetDetectorId :: Val Text
  , _guardDutyIPSetFormat :: Val Text
  , _guardDutyIPSetLocation :: Val Text
  , _guardDutyIPSetName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties GuardDutyIPSet where
  toResourceProperties GuardDutyIPSet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::GuardDuty::IPSet"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Activate",) . toJSON) _guardDutyIPSetActivate
        , (Just . ("DetectorId",) . toJSON) _guardDutyIPSetDetectorId
        , (Just . ("Format",) . toJSON) _guardDutyIPSetFormat
        , (Just . ("Location",) . toJSON) _guardDutyIPSetLocation
        , fmap (("Name",) . toJSON) _guardDutyIPSetName
        ]
    }

-- | Constructor for 'GuardDutyIPSet' containing required fields as arguments.
guardDutyIPSet
  :: Val Bool -- ^ 'gdipsActivate'
  -> Val Text -- ^ 'gdipsDetectorId'
  -> Val Text -- ^ 'gdipsFormat'
  -> Val Text -- ^ 'gdipsLocation'
  -> GuardDutyIPSet
guardDutyIPSet activatearg detectorIdarg formatarg locationarg =
  GuardDutyIPSet
  { _guardDutyIPSetActivate = activatearg
  , _guardDutyIPSetDetectorId = detectorIdarg
  , _guardDutyIPSetFormat = formatarg
  , _guardDutyIPSetLocation = locationarg
  , _guardDutyIPSetName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-ipset.html#cfn-guardduty-ipset-activate
gdipsActivate :: Lens' GuardDutyIPSet (Val Bool)
gdipsActivate = lens _guardDutyIPSetActivate (\s a -> s { _guardDutyIPSetActivate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-ipset.html#cfn-guardduty-ipset-detectorid
gdipsDetectorId :: Lens' GuardDutyIPSet (Val Text)
gdipsDetectorId = lens _guardDutyIPSetDetectorId (\s a -> s { _guardDutyIPSetDetectorId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-ipset.html#cfn-guardduty-ipset-format
gdipsFormat :: Lens' GuardDutyIPSet (Val Text)
gdipsFormat = lens _guardDutyIPSetFormat (\s a -> s { _guardDutyIPSetFormat = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-ipset.html#cfn-guardduty-ipset-location
gdipsLocation :: Lens' GuardDutyIPSet (Val Text)
gdipsLocation = lens _guardDutyIPSetLocation (\s a -> s { _guardDutyIPSetLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-ipset.html#cfn-guardduty-ipset-name
gdipsName :: Lens' GuardDutyIPSet (Maybe (Val Text))
gdipsName = lens _guardDutyIPSetName (\s a -> s { _guardDutyIPSetName = a })
