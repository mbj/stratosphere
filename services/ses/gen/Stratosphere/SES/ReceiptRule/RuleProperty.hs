module Stratosphere.SES.ReceiptRule.RuleProperty (
        module Exports, RuleProperty(..), mkRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.ReceiptRule.ActionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html>
    RuleProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-actions>
                  actions :: (Prelude.Maybe [ActionProperty]),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-enabled>
                  enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-name>
                  name :: (Prelude.Maybe (Value Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-recipients>
                  recipients :: (Prelude.Maybe (ValueList Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-scanenabled>
                  scanEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptrule-rule.html#cfn-ses-receiptrule-rule-tlspolicy>
                  tlsPolicy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleProperty :: RuleProperty
mkRuleProperty
  = RuleProperty
      {actions = Prelude.Nothing, enabled = Prelude.Nothing,
       name = Prelude.Nothing, recipients = Prelude.Nothing,
       scanEnabled = Prelude.Nothing, tlsPolicy = Prelude.Nothing}
instance ToResourceProperties RuleProperty where
  toResourceProperties RuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ReceiptRule.Rule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Actions" Prelude.<$> actions,
                            (JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Recipients" Prelude.<$> recipients,
                            (JSON..=) "ScanEnabled" Prelude.<$> scanEnabled,
                            (JSON..=) "TlsPolicy" Prelude.<$> tlsPolicy])}
instance JSON.ToJSON RuleProperty where
  toJSON RuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Actions" Prelude.<$> actions,
               (JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Recipients" Prelude.<$> recipients,
               (JSON..=) "ScanEnabled" Prelude.<$> scanEnabled,
               (JSON..=) "TlsPolicy" Prelude.<$> tlsPolicy]))
instance Property "Actions" RuleProperty where
  type PropertyType "Actions" RuleProperty = [ActionProperty]
  set newValue RuleProperty {..}
    = RuleProperty {actions = Prelude.pure newValue, ..}
instance Property "Enabled" RuleProperty where
  type PropertyType "Enabled" RuleProperty = Value Prelude.Bool
  set newValue RuleProperty {..}
    = RuleProperty {enabled = Prelude.pure newValue, ..}
instance Property "Name" RuleProperty where
  type PropertyType "Name" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {name = Prelude.pure newValue, ..}
instance Property "Recipients" RuleProperty where
  type PropertyType "Recipients" RuleProperty = ValueList Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {recipients = Prelude.pure newValue, ..}
instance Property "ScanEnabled" RuleProperty where
  type PropertyType "ScanEnabled" RuleProperty = Value Prelude.Bool
  set newValue RuleProperty {..}
    = RuleProperty {scanEnabled = Prelude.pure newValue, ..}
instance Property "TlsPolicy" RuleProperty where
  type PropertyType "TlsPolicy" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {tlsPolicy = Prelude.pure newValue, ..}