module Stratosphere.APS.RuleGroupsNamespace (
        RuleGroupsNamespace(..), mkRuleGroupsNamespace
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data RuleGroupsNamespace
  = RuleGroupsNamespace {data' :: (Value Prelude.Text),
                         name :: (Value Prelude.Text),
                         tags :: (Prelude.Maybe [Tag]),
                         workspace :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleGroupsNamespace ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> RuleGroupsNamespace
mkRuleGroupsNamespace data' name workspace
  = RuleGroupsNamespace
      {data' = data', name = name, workspace = workspace,
       tags = Prelude.Nothing}
instance ToResourceProperties RuleGroupsNamespace where
  toResourceProperties RuleGroupsNamespace {..}
    = ResourceProperties
        {awsType = "AWS::APS::RuleGroupsNamespace",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Data" JSON..= data', "Name" JSON..= name,
                            "Workspace" JSON..= workspace]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON RuleGroupsNamespace where
  toJSON RuleGroupsNamespace {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Data" JSON..= data', "Name" JSON..= name,
               "Workspace" JSON..= workspace]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Data" RuleGroupsNamespace where
  type PropertyType "Data" RuleGroupsNamespace = Value Prelude.Text
  set newValue RuleGroupsNamespace {..}
    = RuleGroupsNamespace {data' = newValue, ..}
instance Property "Name" RuleGroupsNamespace where
  type PropertyType "Name" RuleGroupsNamespace = Value Prelude.Text
  set newValue RuleGroupsNamespace {..}
    = RuleGroupsNamespace {name = newValue, ..}
instance Property "Tags" RuleGroupsNamespace where
  type PropertyType "Tags" RuleGroupsNamespace = [Tag]
  set newValue RuleGroupsNamespace {..}
    = RuleGroupsNamespace {tags = Prelude.pure newValue, ..}
instance Property "Workspace" RuleGroupsNamespace where
  type PropertyType "Workspace" RuleGroupsNamespace = Value Prelude.Text
  set newValue RuleGroupsNamespace {..}
    = RuleGroupsNamespace {workspace = newValue, ..}