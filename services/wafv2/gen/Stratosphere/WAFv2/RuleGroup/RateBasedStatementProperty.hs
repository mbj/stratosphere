module Stratosphere.WAFv2.RuleGroup.RateBasedStatementProperty (
        module Exports, RateBasedStatementProperty(..),
        mkRateBasedStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.ForwardedIPConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.RateBasedStatementCustomKeyProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.StatementProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RateBasedStatementProperty
  = RateBasedStatementProperty {aggregateKeyType :: (Value Prelude.Text),
                                customKeys :: (Prelude.Maybe [RateBasedStatementCustomKeyProperty]),
                                evaluationWindowSec :: (Prelude.Maybe (Value Prelude.Integer)),
                                forwardedIPConfig :: (Prelude.Maybe ForwardedIPConfigurationProperty),
                                limit :: (Value Prelude.Integer),
                                scopeDownStatement :: (Prelude.Maybe StatementProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRateBasedStatementProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> RateBasedStatementProperty
mkRateBasedStatementProperty aggregateKeyType limit
  = RateBasedStatementProperty
      {aggregateKeyType = aggregateKeyType, limit = limit,
       customKeys = Prelude.Nothing,
       evaluationWindowSec = Prelude.Nothing,
       forwardedIPConfig = Prelude.Nothing,
       scopeDownStatement = Prelude.Nothing}
instance ToResourceProperties RateBasedStatementProperty where
  toResourceProperties RateBasedStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.RateBasedStatement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AggregateKeyType" JSON..= aggregateKeyType,
                            "Limit" JSON..= limit]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomKeys" Prelude.<$> customKeys,
                               (JSON..=) "EvaluationWindowSec" Prelude.<$> evaluationWindowSec,
                               (JSON..=) "ForwardedIPConfig" Prelude.<$> forwardedIPConfig,
                               (JSON..=) "ScopeDownStatement" Prelude.<$> scopeDownStatement]))}
instance JSON.ToJSON RateBasedStatementProperty where
  toJSON RateBasedStatementProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AggregateKeyType" JSON..= aggregateKeyType,
               "Limit" JSON..= limit]
              (Prelude.catMaybes
                 [(JSON..=) "CustomKeys" Prelude.<$> customKeys,
                  (JSON..=) "EvaluationWindowSec" Prelude.<$> evaluationWindowSec,
                  (JSON..=) "ForwardedIPConfig" Prelude.<$> forwardedIPConfig,
                  (JSON..=) "ScopeDownStatement" Prelude.<$> scopeDownStatement])))
instance Property "AggregateKeyType" RateBasedStatementProperty where
  type PropertyType "AggregateKeyType" RateBasedStatementProperty = Value Prelude.Text
  set newValue RateBasedStatementProperty {..}
    = RateBasedStatementProperty {aggregateKeyType = newValue, ..}
instance Property "CustomKeys" RateBasedStatementProperty where
  type PropertyType "CustomKeys" RateBasedStatementProperty = [RateBasedStatementCustomKeyProperty]
  set newValue RateBasedStatementProperty {..}
    = RateBasedStatementProperty
        {customKeys = Prelude.pure newValue, ..}
instance Property "EvaluationWindowSec" RateBasedStatementProperty where
  type PropertyType "EvaluationWindowSec" RateBasedStatementProperty = Value Prelude.Integer
  set newValue RateBasedStatementProperty {..}
    = RateBasedStatementProperty
        {evaluationWindowSec = Prelude.pure newValue, ..}
instance Property "ForwardedIPConfig" RateBasedStatementProperty where
  type PropertyType "ForwardedIPConfig" RateBasedStatementProperty = ForwardedIPConfigurationProperty
  set newValue RateBasedStatementProperty {..}
    = RateBasedStatementProperty
        {forwardedIPConfig = Prelude.pure newValue, ..}
instance Property "Limit" RateBasedStatementProperty where
  type PropertyType "Limit" RateBasedStatementProperty = Value Prelude.Integer
  set newValue RateBasedStatementProperty {..}
    = RateBasedStatementProperty {limit = newValue, ..}
instance Property "ScopeDownStatement" RateBasedStatementProperty where
  type PropertyType "ScopeDownStatement" RateBasedStatementProperty = StatementProperty
  set newValue RateBasedStatementProperty {..}
    = RateBasedStatementProperty
        {scopeDownStatement = Prelude.pure newValue, ..}