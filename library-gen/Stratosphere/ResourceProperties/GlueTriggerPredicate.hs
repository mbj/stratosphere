{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-predicate.html

module Stratosphere.ResourceProperties.GlueTriggerPredicate where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GlueTriggerCondition

-- | Full data type definition for GlueTriggerPredicate. See
-- 'glueTriggerPredicate' for a more convenient constructor.
data GlueTriggerPredicate =
  GlueTriggerPredicate
  { _glueTriggerPredicateConditions :: Maybe [GlueTriggerCondition]
  , _glueTriggerPredicateLogical :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON GlueTriggerPredicate where
  toJSON GlueTriggerPredicate{..} =
    object $
    catMaybes
    [ fmap (("Conditions",) . toJSON) _glueTriggerPredicateConditions
    , fmap (("Logical",) . toJSON) _glueTriggerPredicateLogical
    ]

instance FromJSON GlueTriggerPredicate where
  parseJSON (Object obj) =
    GlueTriggerPredicate <$>
      (obj .:? "Conditions") <*>
      (obj .:? "Logical")
  parseJSON _ = mempty

-- | Constructor for 'GlueTriggerPredicate' containing required fields as
-- arguments.
glueTriggerPredicate
  :: GlueTriggerPredicate
glueTriggerPredicate  =
  GlueTriggerPredicate
  { _glueTriggerPredicateConditions = Nothing
  , _glueTriggerPredicateLogical = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-predicate.html#cfn-glue-trigger-predicate-conditions
gtpConditions :: Lens' GlueTriggerPredicate (Maybe [GlueTriggerCondition])
gtpConditions = lens _glueTriggerPredicateConditions (\s a -> s { _glueTriggerPredicateConditions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-predicate.html#cfn-glue-trigger-predicate-logical
gtpLogical :: Lens' GlueTriggerPredicate (Maybe (Val Text))
gtpLogical = lens _glueTriggerPredicateLogical (\s a -> s { _glueTriggerPredicateLogical = a })
