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
  = CFNS3LogsConfigurationProperty {enable :: (Prelude.Maybe (Value Prelude.Bool))}
mkCFNS3LogsConfigurationProperty :: CFNS3LogsConfigurationProperty
mkCFNS3LogsConfigurationProperty
  = CFNS3LogsConfigurationProperty {enable = Prelude.Nothing}
instance ToResourceProperties CFNS3LogsConfigurationProperty where
  toResourceProperties CFNS3LogsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::Detector.CFNS3LogsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enable" Prelude.<$> enable])}
instance JSON.ToJSON CFNS3LogsConfigurationProperty where
  toJSON CFNS3LogsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enable" Prelude.<$> enable]))
instance Property "Enable" CFNS3LogsConfigurationProperty where
  type PropertyType "Enable" CFNS3LogsConfigurationProperty = Value Prelude.Bool
  set newValue CFNS3LogsConfigurationProperty {}
    = CFNS3LogsConfigurationProperty
        {enable = Prelude.pure newValue, ..}