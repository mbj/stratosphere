module Stratosphere.NetworkFirewall.RuleGroup (
        module Exports, RuleGroup(..), mkRuleGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.RuleGroupProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data RuleGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-rulegroup.html>
    RuleGroup {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-rulegroup.html#cfn-networkfirewall-rulegroup-capacity>
               capacity :: (Value Prelude.Integer),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-rulegroup.html#cfn-networkfirewall-rulegroup-description>
               description :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-rulegroup.html#cfn-networkfirewall-rulegroup-rulegroup>
               ruleGroup :: (Prelude.Maybe RuleGroupProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-rulegroup.html#cfn-networkfirewall-rulegroup-rulegroupname>
               ruleGroupName :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-rulegroup.html#cfn-networkfirewall-rulegroup-tags>
               tags :: (Prelude.Maybe [Tag]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-rulegroup.html#cfn-networkfirewall-rulegroup-type>
               type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleGroup ::
  Value Prelude.Integer
  -> Value Prelude.Text -> Value Prelude.Text -> RuleGroup
mkRuleGroup capacity ruleGroupName type'
  = RuleGroup
      {haddock_workaround_ = (), capacity = capacity,
       ruleGroupName = ruleGroupName, type' = type',
       description = Prelude.Nothing, ruleGroup = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties RuleGroup where
  toResourceProperties RuleGroup {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Capacity" JSON..= capacity,
                            "RuleGroupName" JSON..= ruleGroupName, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "RuleGroup" Prelude.<$> ruleGroup,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON RuleGroup where
  toJSON RuleGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Capacity" JSON..= capacity,
               "RuleGroupName" JSON..= ruleGroupName, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "RuleGroup" Prelude.<$> ruleGroup,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Capacity" RuleGroup where
  type PropertyType "Capacity" RuleGroup = Value Prelude.Integer
  set newValue RuleGroup {..} = RuleGroup {capacity = newValue, ..}
instance Property "Description" RuleGroup where
  type PropertyType "Description" RuleGroup = Value Prelude.Text
  set newValue RuleGroup {..}
    = RuleGroup {description = Prelude.pure newValue, ..}
instance Property "RuleGroup" RuleGroup where
  type PropertyType "RuleGroup" RuleGroup = RuleGroupProperty
  set newValue RuleGroup {..}
    = RuleGroup {ruleGroup = Prelude.pure newValue, ..}
instance Property "RuleGroupName" RuleGroup where
  type PropertyType "RuleGroupName" RuleGroup = Value Prelude.Text
  set newValue RuleGroup {..}
    = RuleGroup {ruleGroupName = newValue, ..}
instance Property "Tags" RuleGroup where
  type PropertyType "Tags" RuleGroup = [Tag]
  set newValue RuleGroup {..}
    = RuleGroup {tags = Prelude.pure newValue, ..}
instance Property "Type" RuleGroup where
  type PropertyType "Type" RuleGroup = Value Prelude.Text
  set newValue RuleGroup {..} = RuleGroup {type' = newValue, ..}