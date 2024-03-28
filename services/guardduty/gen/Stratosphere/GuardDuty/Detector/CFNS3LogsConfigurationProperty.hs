module Stratosphere.GuardDuty.Detector.CFNS3LogsConfigurationProperty (
        CFNS3LogsConfigurationProperty(..),
        mkCFNS3LogsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CFNS3LogsConfigurationProperty
  = CFNS3LogsConfigurationProperty {enable :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCFNS3LogsConfigurationProperty ::
  Value Prelude.Bool -> CFNS3LogsConfigurationProperty
mkCFNS3LogsConfigurationProperty enable
  = CFNS3LogsConfigurationProperty {enable = enable}
instance ToResourceProperties CFNS3LogsConfigurationProperty where
  toResourceProperties CFNS3LogsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::Detector.CFNS3LogsConfiguration",
         supportsTags = Prelude.False,
         properties = ["Enable" JSON..= enable]}
instance JSON.ToJSON CFNS3LogsConfigurationProperty where
  toJSON CFNS3LogsConfigurationProperty {..}
    = JSON.object ["Enable" JSON..= enable]
instance Property "Enable" CFNS3LogsConfigurationProperty where
  type PropertyType "Enable" CFNS3LogsConfigurationProperty = Value Prelude.Bool
  set newValue CFNS3LogsConfigurationProperty {}
    = CFNS3LogsConfigurationProperty {enable = newValue, ..}