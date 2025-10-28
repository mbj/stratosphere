module Stratosphere.SES.MailManagerRuleSet.RuleStringToEvaluateProperty (
        RuleStringToEvaluateProperty(..), mkRuleStringToEvaluateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleStringToEvaluateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulestringtoevaluate.html>
    RuleStringToEvaluateProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulestringtoevaluate.html#cfn-ses-mailmanagerruleset-rulestringtoevaluate-attribute>
                                  attribute :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulestringtoevaluate.html#cfn-ses-mailmanagerruleset-rulestringtoevaluate-mimeheaderattribute>
                                  mimeHeaderAttribute :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleStringToEvaluateProperty :: RuleStringToEvaluateProperty
mkRuleStringToEvaluateProperty
  = RuleStringToEvaluateProperty
      {haddock_workaround_ = (), attribute = Prelude.Nothing,
       mimeHeaderAttribute = Prelude.Nothing}
instance ToResourceProperties RuleStringToEvaluateProperty where
  toResourceProperties RuleStringToEvaluateProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.RuleStringToEvaluate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Attribute" Prelude.<$> attribute,
                            (JSON..=) "MimeHeaderAttribute" Prelude.<$> mimeHeaderAttribute])}
instance JSON.ToJSON RuleStringToEvaluateProperty where
  toJSON RuleStringToEvaluateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Attribute" Prelude.<$> attribute,
               (JSON..=) "MimeHeaderAttribute" Prelude.<$> mimeHeaderAttribute]))
instance Property "Attribute" RuleStringToEvaluateProperty where
  type PropertyType "Attribute" RuleStringToEvaluateProperty = Value Prelude.Text
  set newValue RuleStringToEvaluateProperty {..}
    = RuleStringToEvaluateProperty
        {attribute = Prelude.pure newValue, ..}
instance Property "MimeHeaderAttribute" RuleStringToEvaluateProperty where
  type PropertyType "MimeHeaderAttribute" RuleStringToEvaluateProperty = Value Prelude.Text
  set newValue RuleStringToEvaluateProperty {..}
    = RuleStringToEvaluateProperty
        {mimeHeaderAttribute = Prelude.pure newValue, ..}