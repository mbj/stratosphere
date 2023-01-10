
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-findingcriteria.html

module Stratosphere.ResourceProperties.GuardDutyFilterFindingCriteria where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GuardDutyFilterCondition

-- | Full data type definition for GuardDutyFilterFindingCriteria. See
-- 'guardDutyFilterFindingCriteria' for a more convenient constructor.
data GuardDutyFilterFindingCriteria =
  GuardDutyFilterFindingCriteria
  { _guardDutyFilterFindingCriteriaCriterion :: Maybe Object
  , _guardDutyFilterFindingCriteriaItemType :: Maybe GuardDutyFilterCondition
  } deriving (Show, Eq)

instance ToJSON GuardDutyFilterFindingCriteria where
  toJSON GuardDutyFilterFindingCriteria{..} =
    object $
    catMaybes
    [ fmap (("Criterion",) . toJSON) _guardDutyFilterFindingCriteriaCriterion
    , fmap (("ItemType",) . toJSON) _guardDutyFilterFindingCriteriaItemType
    ]

-- | Constructor for 'GuardDutyFilterFindingCriteria' containing required
-- fields as arguments.
guardDutyFilterFindingCriteria
  :: GuardDutyFilterFindingCriteria
guardDutyFilterFindingCriteria  =
  GuardDutyFilterFindingCriteria
  { _guardDutyFilterFindingCriteriaCriterion = Nothing
  , _guardDutyFilterFindingCriteriaItemType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-findingcriteria.html#cfn-guardduty-filter-findingcriteria-criterion
gdffcCriterion :: Lens' GuardDutyFilterFindingCriteria (Maybe Object)
gdffcCriterion = lens _guardDutyFilterFindingCriteriaCriterion (\s a -> s { _guardDutyFilterFindingCriteriaCriterion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-findingcriteria.html#cfn-guardduty-filter-findingcriteria-itemtype
gdffcItemType :: Lens' GuardDutyFilterFindingCriteria (Maybe GuardDutyFilterCondition)
gdffcItemType = lens _guardDutyFilterFindingCriteriaItemType (\s a -> s { _guardDutyFilterFindingCriteriaItemType = a })
