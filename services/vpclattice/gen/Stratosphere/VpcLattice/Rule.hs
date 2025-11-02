module Stratosphere.VpcLattice.Rule (
        module Exports, Rule(..), mkRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VpcLattice.Rule.ActionProperty as Exports
import {-# SOURCE #-} Stratosphere.VpcLattice.Rule.MatchProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Rule
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-rule.html>
    Rule {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-rule.html#cfn-vpclattice-rule-action>
          action :: ActionProperty,
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-rule.html#cfn-vpclattice-rule-listeneridentifier>
          listenerIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-rule.html#cfn-vpclattice-rule-match>
          match :: MatchProperty,
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-rule.html#cfn-vpclattice-rule-name>
          name :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-rule.html#cfn-vpclattice-rule-priority>
          priority :: (Value Prelude.Integer),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-rule.html#cfn-vpclattice-rule-serviceidentifier>
          serviceIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-rule.html#cfn-vpclattice-rule-tags>
          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRule ::
  ActionProperty -> MatchProperty -> Value Prelude.Integer -> Rule
mkRule action match priority
  = Rule
      {haddock_workaround_ = (), action = action, match = match,
       priority = priority, listenerIdentifier = Prelude.Nothing,
       name = Prelude.Nothing, serviceIdentifier = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Rule where
  toResourceProperties Rule {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::Rule", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action, "Match" JSON..= match,
                            "Priority" JSON..= priority]
                           (Prelude.catMaybes
                              [(JSON..=) "ListenerIdentifier" Prelude.<$> listenerIdentifier,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "ServiceIdentifier" Prelude.<$> serviceIdentifier,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Rule where
  toJSON Rule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action, "Match" JSON..= match,
               "Priority" JSON..= priority]
              (Prelude.catMaybes
                 [(JSON..=) "ListenerIdentifier" Prelude.<$> listenerIdentifier,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "ServiceIdentifier" Prelude.<$> serviceIdentifier,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Action" Rule where
  type PropertyType "Action" Rule = ActionProperty
  set newValue Rule {..} = Rule {action = newValue, ..}
instance Property "ListenerIdentifier" Rule where
  type PropertyType "ListenerIdentifier" Rule = Value Prelude.Text
  set newValue Rule {..}
    = Rule {listenerIdentifier = Prelude.pure newValue, ..}
instance Property "Match" Rule where
  type PropertyType "Match" Rule = MatchProperty
  set newValue Rule {..} = Rule {match = newValue, ..}
instance Property "Name" Rule where
  type PropertyType "Name" Rule = Value Prelude.Text
  set newValue Rule {..} = Rule {name = Prelude.pure newValue, ..}
instance Property "Priority" Rule where
  type PropertyType "Priority" Rule = Value Prelude.Integer
  set newValue Rule {..} = Rule {priority = newValue, ..}
instance Property "ServiceIdentifier" Rule where
  type PropertyType "ServiceIdentifier" Rule = Value Prelude.Text
  set newValue Rule {..}
    = Rule {serviceIdentifier = Prelude.pure newValue, ..}
instance Property "Tags" Rule where
  type PropertyType "Tags" Rule = [Tag]
  set newValue Rule {..} = Rule {tags = Prelude.pure newValue, ..}