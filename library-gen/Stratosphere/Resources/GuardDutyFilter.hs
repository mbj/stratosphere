{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-filter.html

module Stratosphere.Resources.GuardDutyFilter where

import Stratosphere.ResourceImports


-- | Full data type definition for GuardDutyFilter. See 'guardDutyFilter' for
-- a more convenient constructor.
data GuardDutyFilter =
  GuardDutyFilter
  { _guardDutyFilterAction :: Val Text
  , _guardDutyFilterDescription :: Val Text
  , _guardDutyFilterDetectorId :: Val Text
  , _guardDutyFilterName :: Val Text
  , _guardDutyFilterRank :: Val Integer
  } deriving (Show, Eq)

instance ToResourceProperties GuardDutyFilter where
  toResourceProperties GuardDutyFilter{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::GuardDuty::Filter"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Action",) . toJSON) _guardDutyFilterAction
        , (Just . ("Description",) . toJSON) _guardDutyFilterDescription
        , (Just . ("DetectorId",) . toJSON) _guardDutyFilterDetectorId
        , (Just . ("Name",) . toJSON) _guardDutyFilterName
        , (Just . ("Rank",) . toJSON) _guardDutyFilterRank
        ]
    }

-- | Constructor for 'GuardDutyFilter' containing required fields as
-- arguments.
guardDutyFilter
  :: Val Text -- ^ 'gdfAction'
  -> Val Text -- ^ 'gdfDescription'
  -> Val Text -- ^ 'gdfDetectorId'
  -> Val Text -- ^ 'gdfName'
  -> Val Integer -- ^ 'gdfRank'
  -> GuardDutyFilter
guardDutyFilter actionarg descriptionarg detectorIdarg namearg rankarg =
  GuardDutyFilter
  { _guardDutyFilterAction = actionarg
  , _guardDutyFilterDescription = descriptionarg
  , _guardDutyFilterDetectorId = detectorIdarg
  , _guardDutyFilterName = namearg
  , _guardDutyFilterRank = rankarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-filter.html#cfn-guardduty-filter-action
gdfAction :: Lens' GuardDutyFilter (Val Text)
gdfAction = lens _guardDutyFilterAction (\s a -> s { _guardDutyFilterAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-filter.html#cfn-guardduty-filter-description
gdfDescription :: Lens' GuardDutyFilter (Val Text)
gdfDescription = lens _guardDutyFilterDescription (\s a -> s { _guardDutyFilterDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-filter.html#cfn-guardduty-filter-detectorid
gdfDetectorId :: Lens' GuardDutyFilter (Val Text)
gdfDetectorId = lens _guardDutyFilterDetectorId (\s a -> s { _guardDutyFilterDetectorId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-filter.html#cfn-guardduty-filter-name
gdfName :: Lens' GuardDutyFilter (Val Text)
gdfName = lens _guardDutyFilterName (\s a -> s { _guardDutyFilterName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-guardduty-filter.html#cfn-guardduty-filter-rank
gdfRank :: Lens' GuardDutyFilter (Val Integer)
gdfRank = lens _guardDutyFilterRank (\s a -> s { _guardDutyFilterRank = a })
