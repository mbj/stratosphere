module Stratosphere.Amplify.Domain.SubDomainSettingProperty (
        SubDomainSettingProperty(..), mkSubDomainSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubDomainSettingProperty
  = SubDomainSettingProperty {branchName :: (Value Prelude.Text),
                              prefix :: (Value Prelude.Text)}
mkSubDomainSettingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SubDomainSettingProperty
mkSubDomainSettingProperty branchName prefix
  = SubDomainSettingProperty
      {branchName = branchName, prefix = prefix}
instance ToResourceProperties SubDomainSettingProperty where
  toResourceProperties SubDomainSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Amplify::Domain.SubDomainSetting",
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