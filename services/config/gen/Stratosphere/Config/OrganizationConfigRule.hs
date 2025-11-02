module Stratosphere.Config.OrganizationConfigRule (
        module Exports, OrganizationConfigRule(..),
        mkOrganizationConfigRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Config.OrganizationConfigRule.OrganizationCustomPolicyRuleMetadataProperty as Exports
import {-# SOURCE #-} Stratosphere.Config.OrganizationConfigRule.OrganizationCustomRuleMetadataProperty as Exports
import {-# SOURCE #-} Stratosphere.Config.OrganizationConfigRule.OrganizationManagedRuleMetadataProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OrganizationConfigRule
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconfigrule.html>
    OrganizationConfigRule {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconfigrule.html#cfn-config-organizationconfigrule-excludedaccounts>
                            excludedAccounts :: (Prelude.Maybe (ValueList Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconfigrule.html#cfn-config-organizationconfigrule-organizationconfigrulename>
                            organizationConfigRuleName :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconfigrule.html#cfn-config-organizationconfigrule-organizationcustompolicyrulemetadata>
                            organizationCustomPolicyRuleMetadata :: (Prelude.Maybe OrganizationCustomPolicyRuleMetadataProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconfigrule.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata>
                            organizationCustomRuleMetadata :: (Prelude.Maybe OrganizationCustomRuleMetadataProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconfigrule.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata>
                            organizationManagedRuleMetadata :: (Prelude.Maybe OrganizationManagedRuleMetadataProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOrganizationConfigRule ::
  Value Prelude.Text -> OrganizationConfigRule
mkOrganizationConfigRule organizationConfigRuleName
  = OrganizationConfigRule
      {haddock_workaround_ = (),
       organizationConfigRuleName = organizationConfigRuleName,
       excludedAccounts = Prelude.Nothing,
       organizationCustomPolicyRuleMetadata = Prelude.Nothing,
       organizationCustomRuleMetadata = Prelude.Nothing,
       organizationManagedRuleMetadata = Prelude.Nothing}
instance ToResourceProperties OrganizationConfigRule where
  toResourceProperties OrganizationConfigRule {..}
    = ResourceProperties
        {awsType = "AWS::Config::OrganizationConfigRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["OrganizationConfigRuleName" JSON..= organizationConfigRuleName]
                           (Prelude.catMaybes
                              [(JSON..=) "ExcludedAccounts" Prelude.<$> excludedAccounts,
                               (JSON..=) "OrganizationCustomPolicyRuleMetadata"
                                 Prelude.<$> organizationCustomPolicyRuleMetadata,
                               (JSON..=) "OrganizationCustomRuleMetadata"
                                 Prelude.<$> organizationCustomRuleMetadata,
                               (JSON..=) "OrganizationManagedRuleMetadata"
                                 Prelude.<$> organizationManagedRuleMetadata]))}
instance JSON.ToJSON OrganizationConfigRule where
  toJSON OrganizationConfigRule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["OrganizationConfigRuleName" JSON..= organizationConfigRuleName]
              (Prelude.catMaybes
                 [(JSON..=) "ExcludedAccounts" Prelude.<$> excludedAccounts,
                  (JSON..=) "OrganizationCustomPolicyRuleMetadata"
                    Prelude.<$> organizationCustomPolicyRuleMetadata,
                  (JSON..=) "OrganizationCustomRuleMetadata"
                    Prelude.<$> organizationCustomRuleMetadata,
                  (JSON..=) "OrganizationManagedRuleMetadata"
                    Prelude.<$> organizationManagedRuleMetadata])))
instance Property "ExcludedAccounts" OrganizationConfigRule where
  type PropertyType "ExcludedAccounts" OrganizationConfigRule = ValueList Prelude.Text
  set newValue OrganizationConfigRule {..}
    = OrganizationConfigRule
        {excludedAccounts = Prelude.pure newValue, ..}
instance Property "OrganizationConfigRuleName" OrganizationConfigRule where
  type PropertyType "OrganizationConfigRuleName" OrganizationConfigRule = Value Prelude.Text
  set newValue OrganizationConfigRule {..}
    = OrganizationConfigRule
        {organizationConfigRuleName = newValue, ..}
instance Property "OrganizationCustomPolicyRuleMetadata" OrganizationConfigRule where
  type PropertyType "OrganizationCustomPolicyRuleMetadata" OrganizationConfigRule = OrganizationCustomPolicyRuleMetadataProperty
  set newValue OrganizationConfigRule {..}
    = OrganizationConfigRule
        {organizationCustomPolicyRuleMetadata = Prelude.pure newValue, ..}
instance Property "OrganizationCustomRuleMetadata" OrganizationConfigRule where
  type PropertyType "OrganizationCustomRuleMetadata" OrganizationConfigRule = OrganizationCustomRuleMetadataProperty
  set newValue OrganizationConfigRule {..}
    = OrganizationConfigRule
        {organizationCustomRuleMetadata = Prelude.pure newValue, ..}
instance Property "OrganizationManagedRuleMetadata" OrganizationConfigRule where
  type PropertyType "OrganizationManagedRuleMetadata" OrganizationConfigRule = OrganizationManagedRuleMetadataProperty
  set newValue OrganizationConfigRule {..}
    = OrganizationConfigRule
        {organizationManagedRuleMetadata = Prelude.pure newValue, ..}