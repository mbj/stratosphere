module Stratosphere.WAFv2.WebACL.AWSManagedRulesAntiDDoSRuleSetProperty (
        module Exports, AWSManagedRulesAntiDDoSRuleSetProperty(..),
        mkAWSManagedRulesAntiDDoSRuleSetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.ClientSideActionConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AWSManagedRulesAntiDDoSRuleSetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-awsmanagedrulesantiddosruleset.html>
    AWSManagedRulesAntiDDoSRuleSetProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-awsmanagedrulesantiddosruleset.html#cfn-wafv2-webacl-awsmanagedrulesantiddosruleset-clientsideactionconfig>
                                            clientSideActionConfig :: ClientSideActionConfigProperty,
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-awsmanagedrulesantiddosruleset.html#cfn-wafv2-webacl-awsmanagedrulesantiddosruleset-sensitivitytoblock>
                                            sensitivityToBlock :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAWSManagedRulesAntiDDoSRuleSetProperty ::
  ClientSideActionConfigProperty
  -> AWSManagedRulesAntiDDoSRuleSetProperty
mkAWSManagedRulesAntiDDoSRuleSetProperty clientSideActionConfig
  = AWSManagedRulesAntiDDoSRuleSetProperty
      {haddock_workaround_ = (),
       clientSideActionConfig = clientSideActionConfig,
       sensitivityToBlock = Prelude.Nothing}
instance ToResourceProperties AWSManagedRulesAntiDDoSRuleSetProperty where
  toResourceProperties AWSManagedRulesAntiDDoSRuleSetProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.AWSManagedRulesAntiDDoSRuleSet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClientSideActionConfig" JSON..= clientSideActionConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "SensitivityToBlock" Prelude.<$> sensitivityToBlock]))}
instance JSON.ToJSON AWSManagedRulesAntiDDoSRuleSetProperty where
  toJSON AWSManagedRulesAntiDDoSRuleSetProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClientSideActionConfig" JSON..= clientSideActionConfig]
              (Prelude.catMaybes
                 [(JSON..=) "SensitivityToBlock" Prelude.<$> sensitivityToBlock])))
instance Property "ClientSideActionConfig" AWSManagedRulesAntiDDoSRuleSetProperty where
  type PropertyType "ClientSideActionConfig" AWSManagedRulesAntiDDoSRuleSetProperty = ClientSideActionConfigProperty
  set newValue AWSManagedRulesAntiDDoSRuleSetProperty {..}
    = AWSManagedRulesAntiDDoSRuleSetProperty
        {clientSideActionConfig = newValue, ..}
instance Property "SensitivityToBlock" AWSManagedRulesAntiDDoSRuleSetProperty where
  type PropertyType "SensitivityToBlock" AWSManagedRulesAntiDDoSRuleSetProperty = Value Prelude.Text
  set newValue AWSManagedRulesAntiDDoSRuleSetProperty {..}
    = AWSManagedRulesAntiDDoSRuleSetProperty
        {sensitivityToBlock = Prelude.pure newValue, ..}