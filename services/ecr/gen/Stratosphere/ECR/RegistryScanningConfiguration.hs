module Stratosphere.ECR.RegistryScanningConfiguration (
        module Exports, RegistryScanningConfiguration(..),
        mkRegistryScanningConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECR.RegistryScanningConfiguration.ScanningRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RegistryScanningConfiguration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-registryscanningconfiguration.html>
    RegistryScanningConfiguration {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-registryscanningconfiguration.html#cfn-ecr-registryscanningconfiguration-rules>
                                   rules :: [ScanningRuleProperty],
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecr-registryscanningconfiguration.html#cfn-ecr-registryscanningconfiguration-scantype>
                                   scanType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRegistryScanningConfiguration ::
  [ScanningRuleProperty]
  -> Value Prelude.Text -> RegistryScanningConfiguration
mkRegistryScanningConfiguration rules scanType
  = RegistryScanningConfiguration
      {haddock_workaround_ = (), rules = rules, scanType = scanType}
instance ToResourceProperties RegistryScanningConfiguration where
  toResourceProperties RegistryScanningConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::ECR::RegistryScanningConfiguration",
         supportsTags = Prelude.False,
         properties = ["Rules" JSON..= rules, "ScanType" JSON..= scanType]}
instance JSON.ToJSON RegistryScanningConfiguration where
  toJSON RegistryScanningConfiguration {..}
    = JSON.object ["Rules" JSON..= rules, "ScanType" JSON..= scanType]
instance Property "Rules" RegistryScanningConfiguration where
  type PropertyType "Rules" RegistryScanningConfiguration = [ScanningRuleProperty]
  set newValue RegistryScanningConfiguration {..}
    = RegistryScanningConfiguration {rules = newValue, ..}
instance Property "ScanType" RegistryScanningConfiguration where
  type PropertyType "ScanType" RegistryScanningConfiguration = Value Prelude.Text
  set newValue RegistryScanningConfiguration {..}
    = RegistryScanningConfiguration {scanType = newValue, ..}