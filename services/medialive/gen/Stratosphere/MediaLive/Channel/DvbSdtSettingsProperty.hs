module Stratosphere.MediaLive.Channel.DvbSdtSettingsProperty (
        DvbSdtSettingsProperty(..), mkDvbSdtSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DvbSdtSettingsProperty
  = DvbSdtSettingsProperty {outputSdt :: (Prelude.Maybe (Value Prelude.Text)),
                            repInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                            serviceName :: (Prelude.Maybe (Value Prelude.Text)),
                            serviceProviderName :: (Prelude.Maybe (Value Prelude.Text))}
mkDvbSdtSettingsProperty :: DvbSdtSettingsProperty
mkDvbSdtSettingsProperty
  = DvbSdtSettingsProperty
      {outputSdt = Prelude.Nothing, repInterval = Prelude.Nothing,
       serviceName = Prelude.Nothing,
       serviceProviderName = Prelude.Nothing}
instance ToResourceProperties DvbSdtSettingsProperty where
  toResourceProperties DvbSdtSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.DvbSdtSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OutputSdt" Prelude.<$> outputSdt,
                            (JSON..=) "RepInterval" Prelude.<$> repInterval,
                            (JSON..=) "ServiceName" Prelude.<$> serviceName,
                            (JSON..=) "ServiceProviderName" Prelude.<$> serviceProviderName])}
instance JSON.ToJSON DvbSdtSettingsProperty where
  toJSON DvbSdtSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OutputSdt" Prelude.<$> outputSdt,
               (JSON..=) "RepInterval" Prelude.<$> repInterval,
               (JSON..=) "ServiceName" Prelude.<$> serviceName,
               (JSON..=) "ServiceProviderName" Prelude.<$> serviceProviderName]))
instance Property "OutputSdt" DvbSdtSettingsProperty where
  type PropertyType "OutputSdt" DvbSdtSettingsProperty = Value Prelude.Text
  set newValue DvbSdtSettingsProperty {..}
    = DvbSdtSettingsProperty {outputSdt = Prelude.pure newValue, ..}
instance Property "RepInterval" DvbSdtSettingsProperty where
  type PropertyType "RepInterval" DvbSdtSettingsProperty = Value Prelude.Integer
  set newValue DvbSdtSettingsProperty {..}
    = DvbSdtSettingsProperty {repInterval = Prelude.pure newValue, ..}
instance Property "ServiceName" DvbSdtSettingsProperty where
  type PropertyType "ServiceName" DvbSdtSettingsProperty = Value Prelude.Text
  set newValue DvbSdtSettingsProperty {..}
    = DvbSdtSettingsProperty {serviceName = Prelude.pure newValue, ..}
instance Property "ServiceProviderName" DvbSdtSettingsProperty where
  type PropertyType "ServiceProviderName" DvbSdtSettingsProperty = Value Prelude.Text
  set newValue DvbSdtSettingsProperty {..}
    = DvbSdtSettingsProperty
        {serviceProviderName = Prelude.pure newValue, ..}