module Stratosphere.PCS.Cluster.SlurmCustomSettingProperty (
        SlurmCustomSettingProperty(..), mkSlurmCustomSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlurmCustomSettingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-slurmcustomsetting.html>
    SlurmCustomSettingProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-slurmcustomsetting.html#cfn-pcs-cluster-slurmcustomsetting-parametername>
                                parameterName :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-slurmcustomsetting.html#cfn-pcs-cluster-slurmcustomsetting-parametervalue>
                                parameterValue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSlurmCustomSettingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SlurmCustomSettingProperty
mkSlurmCustomSettingProperty parameterName parameterValue
  = SlurmCustomSettingProperty
      {haddock_workaround_ = (), parameterName = parameterName,
       parameterValue = parameterValue}
instance ToResourceProperties SlurmCustomSettingProperty where
  toResourceProperties SlurmCustomSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCS::Cluster.SlurmCustomSetting",
         supportsTags = Prelude.False,
         properties = ["ParameterName" JSON..= parameterName,
                       "ParameterValue" JSON..= parameterValue]}
instance JSON.ToJSON SlurmCustomSettingProperty where
  toJSON SlurmCustomSettingProperty {..}
    = JSON.object
        ["ParameterName" JSON..= parameterName,
         "ParameterValue" JSON..= parameterValue]
instance Property "ParameterName" SlurmCustomSettingProperty where
  type PropertyType "ParameterName" SlurmCustomSettingProperty = Value Prelude.Text
  set newValue SlurmCustomSettingProperty {..}
    = SlurmCustomSettingProperty {parameterName = newValue, ..}
instance Property "ParameterValue" SlurmCustomSettingProperty where
  type PropertyType "ParameterValue" SlurmCustomSettingProperty = Value Prelude.Text
  set newValue SlurmCustomSettingProperty {..}
    = SlurmCustomSettingProperty {parameterValue = newValue, ..}