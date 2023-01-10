
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-condition.html

module Stratosphere.ResourceProperties.GuardDutyFilterCondition where

import Stratosphere.ResourceImports


-- | Full data type definition for GuardDutyFilterCondition. See
-- 'guardDutyFilterCondition' for a more convenient constructor.
data GuardDutyFilterCondition =
  GuardDutyFilterCondition
  { _guardDutyFilterConditionEq :: Maybe (ValList Text)
  , _guardDutyFilterConditionGte :: Maybe (Val Integer)
  , _guardDutyFilterConditionLt :: Maybe (Val Integer)
  , _guardDutyFilterConditionLte :: Maybe (Val Integer)
  , _guardDutyFilterConditionNeq :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON GuardDutyFilterCondition where
  toJSON GuardDutyFilterCondition{..} =
    object $
    catMaybes
    [ fmap (("Eq",) . toJSON) _guardDutyFilterConditionEq
    , fmap (("Gte",) . toJSON) _guardDutyFilterConditionGte
    , fmap (("Lt",) . toJSON) _guardDutyFilterConditionLt
    , fmap (("Lte",) . toJSON) _guardDutyFilterConditionLte
    , fmap (("Neq",) . toJSON) _guardDutyFilterConditionNeq
    ]

-- | Constructor for 'GuardDutyFilterCondition' containing required fields as
-- arguments.
guardDutyFilterCondition
  :: GuardDutyFilterCondition
guardDutyFilterCondition  =
  GuardDutyFilterCondition
  { _guardDutyFilterConditionEq = Nothing
  , _guardDutyFilterConditionGte = Nothing
  , _guardDutyFilterConditionLt = Nothing
  , _guardDutyFilterConditionLte = Nothing
  , _guardDutyFilterConditionNeq = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-condition.html#cfn-guardduty-filter-condition-eq
gdfcEq :: Lens' GuardDutyFilterCondition (Maybe (ValList Text))
gdfcEq = lens _guardDutyFilterConditionEq (\s a -> s { _guardDutyFilterConditionEq = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-condition.html#cfn-guardduty-filter-condition-gte
gdfcGte :: Lens' GuardDutyFilterCondition (Maybe (Val Integer))
gdfcGte = lens _guardDutyFilterConditionGte (\s a -> s { _guardDutyFilterConditionGte = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-condition.html#cfn-guardduty-filter-condition-lt
gdfcLt :: Lens' GuardDutyFilterCondition (Maybe (Val Integer))
gdfcLt = lens _guardDutyFilterConditionLt (\s a -> s { _guardDutyFilterConditionLt = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-condition.html#cfn-guardduty-filter-condition-lte
gdfcLte :: Lens' GuardDutyFilterCondition (Maybe (Val Integer))
gdfcLte = lens _guardDutyFilterConditionLte (\s a -> s { _guardDutyFilterConditionLte = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-guardduty-filter-condition.html#cfn-guardduty-filter-condition-neq
gdfcNeq :: Lens' GuardDutyFilterCondition (Maybe (ValList Text))
gdfcNeq = lens _guardDutyFilterConditionNeq (\s a -> s { _guardDutyFilterConditionNeq = a })
