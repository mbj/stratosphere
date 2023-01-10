
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-eventselector.html

module Stratosphere.ResourceProperties.CloudTrailTrailEventSelector where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudTrailTrailDataResource

-- | Full data type definition for CloudTrailTrailEventSelector. See
-- 'cloudTrailTrailEventSelector' for a more convenient constructor.
data CloudTrailTrailEventSelector =
  CloudTrailTrailEventSelector
  { _cloudTrailTrailEventSelectorDataResources :: Maybe [CloudTrailTrailDataResource]
  , _cloudTrailTrailEventSelectorIncludeManagementEvents :: Maybe (Val Bool)
  , _cloudTrailTrailEventSelectorReadWriteType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CloudTrailTrailEventSelector where
  toJSON CloudTrailTrailEventSelector{..} =
    object $
    catMaybes
    [ fmap (("DataResources",) . toJSON) _cloudTrailTrailEventSelectorDataResources
    , fmap (("IncludeManagementEvents",) . toJSON) _cloudTrailTrailEventSelectorIncludeManagementEvents
    , fmap (("ReadWriteType",) . toJSON) _cloudTrailTrailEventSelectorReadWriteType
    ]

-- | Constructor for 'CloudTrailTrailEventSelector' containing required fields
-- as arguments.
cloudTrailTrailEventSelector
  :: CloudTrailTrailEventSelector
cloudTrailTrailEventSelector  =
  CloudTrailTrailEventSelector
  { _cloudTrailTrailEventSelectorDataResources = Nothing
  , _cloudTrailTrailEventSelectorIncludeManagementEvents = Nothing
  , _cloudTrailTrailEventSelectorReadWriteType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-eventselector.html#cfn-cloudtrail-trail-eventselector-dataresources
cttesDataResources :: Lens' CloudTrailTrailEventSelector (Maybe [CloudTrailTrailDataResource])
cttesDataResources = lens _cloudTrailTrailEventSelectorDataResources (\s a -> s { _cloudTrailTrailEventSelectorDataResources = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-eventselector.html#cfn-cloudtrail-trail-eventselector-includemanagementevents
cttesIncludeManagementEvents :: Lens' CloudTrailTrailEventSelector (Maybe (Val Bool))
cttesIncludeManagementEvents = lens _cloudTrailTrailEventSelectorIncludeManagementEvents (\s a -> s { _cloudTrailTrailEventSelectorIncludeManagementEvents = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-eventselector.html#cfn-cloudtrail-trail-eventselector-readwritetype
cttesReadWriteType :: Lens' CloudTrailTrailEventSelector (Maybe (Val Text))
cttesReadWriteType = lens _cloudTrailTrailEventSelectorReadWriteType (\s a -> s { _cloudTrailTrailEventSelectorReadWriteType = a })
