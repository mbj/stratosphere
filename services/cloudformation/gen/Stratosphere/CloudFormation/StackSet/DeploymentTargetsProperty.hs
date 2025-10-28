module Stratosphere.CloudFormation.StackSet.DeploymentTargetsProperty (
        DeploymentTargetsProperty(..), mkDeploymentTargetsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentTargetsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-deploymenttargets.html>
    DeploymentTargetsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-deploymenttargets.html#cfn-cloudformation-stackset-deploymenttargets-accountfiltertype>
                               accountFilterType :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-deploymenttargets.html#cfn-cloudformation-stackset-deploymenttargets-accounts>
                               accounts :: (Prelude.Maybe (ValueList Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-deploymenttargets.html#cfn-cloudformation-stackset-deploymenttargets-accountsurl>
                               accountsUrl :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-stackset-deploymenttargets.html#cfn-cloudformation-stackset-deploymenttargets-organizationalunitids>
                               organizationalUnitIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeploymentTargetsProperty :: DeploymentTargetsProperty
mkDeploymentTargetsProperty
  = DeploymentTargetsProperty
      {haddock_workaround_ = (), accountFilterType = Prelude.Nothing,
       accounts = Prelude.Nothing, accountsUrl = Prelude.Nothing,
       organizationalUnitIds = Prelude.Nothing}
instance ToResourceProperties DeploymentTargetsProperty where
  toResourceProperties DeploymentTargetsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::StackSet.DeploymentTargets",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccountFilterType" Prelude.<$> accountFilterType,
                            (JSON..=) "Accounts" Prelude.<$> accounts,
                            (JSON..=) "AccountsUrl" Prelude.<$> accountsUrl,
                            (JSON..=) "OrganizationalUnitIds"
                              Prelude.<$> organizationalUnitIds])}
instance JSON.ToJSON DeploymentTargetsProperty where
  toJSON DeploymentTargetsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccountFilterType" Prelude.<$> accountFilterType,
               (JSON..=) "Accounts" Prelude.<$> accounts,
               (JSON..=) "AccountsUrl" Prelude.<$> accountsUrl,
               (JSON..=) "OrganizationalUnitIds"
                 Prelude.<$> organizationalUnitIds]))
instance Property "AccountFilterType" DeploymentTargetsProperty where
  type PropertyType "AccountFilterType" DeploymentTargetsProperty = Value Prelude.Text
  set newValue DeploymentTargetsProperty {..}
    = DeploymentTargetsProperty
        {accountFilterType = Prelude.pure newValue, ..}
instance Property "Accounts" DeploymentTargetsProperty where
  type PropertyType "Accounts" DeploymentTargetsProperty = ValueList Prelude.Text
  set newValue DeploymentTargetsProperty {..}
    = DeploymentTargetsProperty {accounts = Prelude.pure newValue, ..}
instance Property "AccountsUrl" DeploymentTargetsProperty where
  type PropertyType "AccountsUrl" DeploymentTargetsProperty = Value Prelude.Text
  set newValue DeploymentTargetsProperty {..}
    = DeploymentTargetsProperty
        {accountsUrl = Prelude.pure newValue, ..}
instance Property "OrganizationalUnitIds" DeploymentTargetsProperty where
  type PropertyType "OrganizationalUnitIds" DeploymentTargetsProperty = ValueList Prelude.Text
  set newValue DeploymentTargetsProperty {..}
    = DeploymentTargetsProperty
        {organizationalUnitIds = Prelude.pure newValue, ..}