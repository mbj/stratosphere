{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-rule-predicates.html

module Stratosphere.ResourceProperties.WAFRulePredicate where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for WAFRulePredicate. See 'wafRulePredicate'
-- | for a more convenient constructor.
data WAFRulePredicate =
  WAFRulePredicate
  { _wAFRulePredicateDataId :: Val Text
  , _wAFRulePredicateNegated :: Val Bool'
  , _wAFRulePredicateType :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFRulePredicate where
  toJSON WAFRulePredicate{..} =
    object
    [ "DataId" .= _wAFRulePredicateDataId
    , "Negated" .= _wAFRulePredicateNegated
    , "Type" .= _wAFRulePredicateType
    ]

instance FromJSON WAFRulePredicate where
  parseJSON (Object obj) =
    WAFRulePredicate <$>
      obj .: "DataId" <*>
      obj .: "Negated" <*>
      obj .: "Type"
  parseJSON _ = mempty

-- | Constructor for 'WAFRulePredicate' containing required fields as
-- | arguments.
wafRulePredicate
  :: Val Text -- ^ 'wafrpDataId'
  -> Val Bool' -- ^ 'wafrpNegated'
  -> Val Text -- ^ 'wafrpType'
  -> WAFRulePredicate
wafRulePredicate dataIdarg negatedarg typearg =
  WAFRulePredicate
  { _wAFRulePredicateDataId = dataIdarg
  , _wAFRulePredicateNegated = negatedarg
  , _wAFRulePredicateType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-rule-predicates.html#cfn-waf-rule-predicates-dataid
wafrpDataId :: Lens' WAFRulePredicate (Val Text)
wafrpDataId = lens _wAFRulePredicateDataId (\s a -> s { _wAFRulePredicateDataId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-rule-predicates.html#cfn-waf-rule-predicates-negated
wafrpNegated :: Lens' WAFRulePredicate (Val Bool')
wafrpNegated = lens _wAFRulePredicateNegated (\s a -> s { _wAFRulePredicateNegated = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-rule-predicates.html#cfn-waf-rule-predicates-type
wafrpType :: Lens' WAFRulePredicate (Val Text)
wafrpType = lens _wAFRulePredicateType (\s a -> s { _wAFRulePredicateType = a })
