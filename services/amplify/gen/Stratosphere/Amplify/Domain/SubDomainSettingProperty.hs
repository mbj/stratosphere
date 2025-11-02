module Stratosphere.Amplify.Domain.SubDomainSettingProperty (
        SubDomainSettingProperty(..), mkSubDomainSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubDomainSettingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-domain-subdomainsetting.html>
    SubDomainSettingProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-domain-subdomainsetting.html#cfn-amplify-domain-subdomainsetting-branchname>
                              branchName :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplify-domain-subdomainsetting.html#cfn-amplify-domain-subdomainsetting-prefix>
                              prefix :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubDomainSettingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SubDomainSettingProperty
mkSubDomainSettingProperty branchName prefix
  = SubDomainSettingProperty
      {haddock_workaround_ = (), branchName = branchName,
       prefix = prefix}
instance ToResourceProperties SubDomainSettingProperty where
  toResourceProperties SubDomainSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Amplify::Domain.SubDomainSetting",
         supportsTags = Prelude.False,
         properties = ["BranchName" JSON..= branchName,
                       "Prefix" JSON..= prefix]}
instance JSON.ToJSON SubDomainSettingProperty where
  toJSON SubDomainSettingProperty {..}
    = JSON.object
        ["BranchName" JSON..= branchName, "Prefix" JSON..= prefix]
instance Property "BranchName" SubDomainSettingProperty where
  type PropertyType "BranchName" SubDomainSettingProperty = Value Prelude.Text
  set newValue SubDomainSettingProperty {..}
    = SubDomainSettingProperty {branchName = newValue, ..}
instance Property "Prefix" SubDomainSettingProperty where
  type PropertyType "Prefix" SubDomainSettingProperty = Value Prelude.Text
  set newValue SubDomainSettingProperty {..}
    = SubDomainSettingProperty {prefix = newValue, ..}