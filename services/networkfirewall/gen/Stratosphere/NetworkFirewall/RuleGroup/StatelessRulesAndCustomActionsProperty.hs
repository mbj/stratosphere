module Stratosphere.NetworkFirewall.RuleGroup.StatelessRulesAndCustomActionsProperty (
        module Exports, StatelessRulesAndCustomActionsProperty(..),
        mkStatelessRulesAndCustomActionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.CustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.StatelessRuleProperty as Exports
import Stratosphere.ResourceProperties
data StatelessRulesAndCustomActionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-statelessrulesandcustomactions.html>
    StatelessRulesAndCustomActionsProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-statelessrulesandcustomactions.html#cfn-networkfirewall-rulegroup-statelessrulesandcustomactions-customactions>
                                            customActions :: (Prelude.Maybe [CustomActionProperty]),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-statelessrulesandcustomactions.html#cfn-networkfirewall-rulegroup-statelessrulesandcustomactions-statelessrules>
                                            statelessRules :: [StatelessRuleProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStatelessRulesAndCustomActionsProperty ::
  [StatelessRuleProperty] -> StatelessRulesAndCustomActionsProperty
mkStatelessRulesAndCustomActionsProperty statelessRules
  = StatelessRulesAndCustomActionsProperty
      {haddock_workaround_ = (), statelessRules = statelessRules,
       customActions = Prelude.Nothing}
instance ToResourceProperties StatelessRulesAndCustomActionsProperty where
  toResourceProperties StatelessRulesAndCustomActionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.StatelessRulesAndCustomActions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StatelessRules" JSON..= statelessRules]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomActions" Prelude.<$> customActions]))}
instance JSON.ToJSON StatelessRulesAndCustomActionsProperty where
  toJSON StatelessRulesAndCustomActionsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StatelessRules" JSON..= statelessRules]
              (Prelude.catMaybes
                 [(JSON..=) "CustomActions" Prelude.<$> customActions])))
instance Property "CustomActions" StatelessRulesAndCustomActionsProperty where
  type PropertyType "CustomActions" StatelessRulesAndCustomActionsProperty = [CustomActionProperty]
  set newValue StatelessRulesAndCustomActionsProperty {..}
    = StatelessRulesAndCustomActionsProperty
        {customActions = Prelude.pure newValue, ..}
instance Property "StatelessRules" StatelessRulesAndCustomActionsProperty where
  type PropertyType "StatelessRules" StatelessRulesAndCustomActionsProperty = [StatelessRuleProperty]
  set newValue StatelessRulesAndCustomActionsProperty {..}
    = StatelessRulesAndCustomActionsProperty
        {statelessRules = newValue, ..}