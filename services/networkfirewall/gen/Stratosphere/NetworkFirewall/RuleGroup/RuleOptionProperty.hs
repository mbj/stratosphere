module Stratosphere.NetworkFirewall.RuleGroup.RuleOptionProperty (
        RuleOptionProperty(..), mkRuleOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleOptionProperty
  = RuleOptionProperty {keyword :: (Value Prelude.Text),
                        settings :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkRuleOptionProperty :: Value Prelude.Text -> RuleOptionProperty
mkRuleOptionProperty keyword
  = RuleOptionProperty
      {keyword = keyword, settings = Prelude.Nothing}
instance ToResourceProperties RuleOptionProperty where
  toResourceProperties RuleOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.RuleOption",
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
  type PropertyType "Settings" RuleOptionProperty = ValueList (Value Prelude.Text)
  set newValue RuleOptionProperty {..}
    = RuleOptionProperty {settings = Prelude.pure newValue, ..}