module Stratosphere.SES.MailManagerRuleSet.RuleBooleanToEvaluateProperty (
        module Exports, RuleBooleanToEvaluateProperty(..),
        mkRuleBooleanToEvaluateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.AnalysisProperty as Exports
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.RuleIsInAddressListProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleBooleanToEvaluateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulebooleantoevaluate.html>
    RuleBooleanToEvaluateProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulebooleantoevaluate.html#cfn-ses-mailmanagerruleset-rulebooleantoevaluate-analysis>
                                   analysis :: (Prelude.Maybe AnalysisProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulebooleantoevaluate.html#cfn-ses-mailmanagerruleset-rulebooleantoevaluate-attribute>
                                   attribute :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulebooleantoevaluate.html#cfn-ses-mailmanagerruleset-rulebooleantoevaluate-isinaddresslist>
                                   isInAddressList :: (Prelude.Maybe RuleIsInAddressListProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleBooleanToEvaluateProperty :: RuleBooleanToEvaluateProperty
mkRuleBooleanToEvaluateProperty
  = RuleBooleanToEvaluateProperty
      {haddock_workaround_ = (), analysis = Prelude.Nothing,
       attribute = Prelude.Nothing, isInAddressList = Prelude.Nothing}
instance ToResourceProperties RuleBooleanToEvaluateProperty where
  toResourceProperties RuleBooleanToEvaluateProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.RuleBooleanToEvaluate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Analysis" Prelude.<$> analysis,
                            (JSON..=) "Attribute" Prelude.<$> attribute,
                            (JSON..=) "IsInAddressList" Prelude.<$> isInAddressList])}
instance JSON.ToJSON RuleBooleanToEvaluateProperty where
  toJSON RuleBooleanToEvaluateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Analysis" Prelude.<$> analysis,
               (JSON..=) "Attribute" Prelude.<$> attribute,
               (JSON..=) "IsInAddressList" Prelude.<$> isInAddressList]))
instance Property "Analysis" RuleBooleanToEvaluateProperty where
  type PropertyType "Analysis" RuleBooleanToEvaluateProperty = AnalysisProperty
  set newValue RuleBooleanToEvaluateProperty {..}
    = RuleBooleanToEvaluateProperty
        {analysis = Prelude.pure newValue, ..}
instance Property "Attribute" RuleBooleanToEvaluateProperty where
  type PropertyType "Attribute" RuleBooleanToEvaluateProperty = Value Prelude.Text
  set newValue RuleBooleanToEvaluateProperty {..}
    = RuleBooleanToEvaluateProperty
        {attribute = Prelude.pure newValue, ..}
instance Property "IsInAddressList" RuleBooleanToEvaluateProperty where
  type PropertyType "IsInAddressList" RuleBooleanToEvaluateProperty = RuleIsInAddressListProperty
  set newValue RuleBooleanToEvaluateProperty {..}
    = RuleBooleanToEvaluateProperty
        {isInAddressList = Prelude.pure newValue, ..}