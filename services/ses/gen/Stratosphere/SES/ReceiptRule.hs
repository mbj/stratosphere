module Stratosphere.SES.ReceiptRule (
        module Exports, ReceiptRule(..), mkReceiptRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.ReceiptRule.RuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReceiptRule
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptrule.html>
    ReceiptRule {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptrule.html#cfn-ses-receiptrule-after>
                 after :: (Prelude.Maybe (Value Prelude.Text)),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptrule.html#cfn-ses-receiptrule-rule>
                 rule :: RuleProperty,
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptrule.html#cfn-ses-receiptrule-rulesetname>
                 ruleSetName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReceiptRule :: RuleProperty -> Value Prelude.Text -> ReceiptRule
mkReceiptRule rule ruleSetName
  = ReceiptRule
      {rule = rule, ruleSetName = ruleSetName, after = Prelude.Nothing}
instance ToResourceProperties ReceiptRule where
  toResourceProperties ReceiptRule {..}
    = ResourceProperties
        {awsType = "AWS::SES::ReceiptRule", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Rule" JSON..= rule, "RuleSetName" JSON..= ruleSetName]
                           (Prelude.catMaybes [(JSON..=) "After" Prelude.<$> after]))}
instance JSON.ToJSON ReceiptRule where
  toJSON ReceiptRule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Rule" JSON..= rule, "RuleSetName" JSON..= ruleSetName]
              (Prelude.catMaybes [(JSON..=) "After" Prelude.<$> after])))
instance Property "After" ReceiptRule where
  type PropertyType "After" ReceiptRule = Value Prelude.Text
  set newValue ReceiptRule {..}
    = ReceiptRule {after = Prelude.pure newValue, ..}
instance Property "Rule" ReceiptRule where
  type PropertyType "Rule" ReceiptRule = RuleProperty
  set newValue ReceiptRule {..} = ReceiptRule {rule = newValue, ..}
instance Property "RuleSetName" ReceiptRule where
  type PropertyType "RuleSetName" ReceiptRule = Value Prelude.Text
  set newValue ReceiptRule {..}
    = ReceiptRule {ruleSetName = newValue, ..}