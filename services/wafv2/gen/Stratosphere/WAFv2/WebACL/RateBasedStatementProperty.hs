module Stratosphere.WAFv2.WebACL.RateBasedStatementProperty (
        module Exports, RateBasedStatementProperty(..),
        mkRateBasedStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.ForwardedIPConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.RateBasedStatementCustomKeyProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.StatementProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RateBasedStatementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatement.html>
    RateBasedStatementProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatement.html#cfn-wafv2-webacl-ratebasedstatement-aggregatekeytype>
                                aggregateKeyType :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatement.html#cfn-wafv2-webacl-ratebasedstatement-customkeys>
                                customKeys :: (Prelude.Maybe [RateBasedStatementCustomKeyProperty]),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatement.html#cfn-wafv2-webacl-ratebasedstatement-evaluationwindowsec>
                                evaluationWindowSec :: (Prelude.Maybe (Value Prelude.Integer)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatement.html#cfn-wafv2-webacl-ratebasedstatement-forwardedipconfig>
                                forwardedIPConfig :: (Prelude.Maybe ForwardedIPConfigurationProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatement.html#cfn-wafv2-webacl-ratebasedstatement-limit>
                                limit :: (Value Prelude.Integer),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatement.html#cfn-wafv2-webacl-ratebasedstatement-scopedownstatement>
                                scopeDownStatement :: (Prelude.Maybe StatementProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRateBasedStatementProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> RateBasedStatementProperty
mkRateBasedStatementProperty aggregateKeyType limit
  = RateBasedStatementProperty
      {haddock_workaround_ = (), aggregateKeyType = aggregateKeyType,
       limit = limit, customKeys = Prelude.Nothing,
       evaluationWindowSec = Prelude.Nothing,
       forwardedIPConfig = Prelude.Nothing,
       scopeDownStatement = Prelude.Nothing}
instance ToResourceProperties RateBasedStatementProperty where
  toResourceProperties RateBasedStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.RateBasedStatement",
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