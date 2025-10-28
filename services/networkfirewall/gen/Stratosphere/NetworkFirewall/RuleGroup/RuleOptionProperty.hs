module Stratosphere.NetworkFirewall.RuleGroup.RuleOptionProperty (
        RuleOptionProperty(..), mkRuleOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-ruleoption.html>
    RuleOptionProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-ruleoption.html#cfn-networkfirewall-rulegroup-ruleoption-keyword>
                        keyword :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-ruleoption.html#cfn-networkfirewall-rulegroup-ruleoption-settings>
                        settings :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleOptionProperty :: Value Prelude.Text -> RuleOptionProperty
mkRuleOptionProperty keyword
  = RuleOptionProperty
      {haddock_workaround_ = (), keyword = keyword,
       settings = Prelude.Nothing}
instance ToResourceProperties RuleOptionProperty where
  toResourceProperties RuleOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.RuleOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Keyword" JSON..= keyword]
                           (Prelude.catMaybes [(JSON..=) "Settings" Prelude.<$> settings]))}
instance JSON.ToJSON RuleOptionProperty where
  toJSON RuleOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Keyword" JSON..= keyword]
              (Prelude.catMaybes [(JSON..=) "Settings" Prelude.<$> settings])))
instance Property "Keyword" RuleOptionProperty where
  type PropertyType "Keyword" RuleOptionProperty = Value Prelude.Text
  set newValue RuleOptionProperty {..}
    = RuleOptionProperty {keyword = newValue, ..}
instance Property "Settings" RuleOptionProperty where
  type PropertyType "Settings" RuleOptionProperty = ValueList Prelude.Text
  set newValue RuleOptionProperty {..}
    = RuleOptionProperty {settings = Prelude.pure newValue, ..}