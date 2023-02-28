module Stratosphere.LicenseManager.License.ProvisionalConfigurationProperty (
        ProvisionalConfigurationProperty(..),
        mkProvisionalConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProvisionalConfigurationProperty
  = ProvisionalConfigurationProperty {maxTimeToLiveInMinutes :: (Value Prelude.Integer)}
mkProvisionalConfigurationProperty ::
  Value Prelude.Integer -> ProvisionalConfigurationProperty
mkProvisionalConfigurationProperty maxTimeToLiveInMinutes
  = ProvisionalConfigurationProperty
      {maxTimeToLiveInMinutes = maxTimeToLiveInMinutes}
instance ToResourceProperties ProvisionalConfigurationProperty where
  toResourceProperties ProvisionalConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::LicenseManager::License.ProvisionalConfiguration",
         supportsTags = Prelude.False,
         properties = ["MaxTimeToLiveInMinutes"
                         JSON..= maxTimeToLiveInMinutes]}
instance JSON.ToJSON ProvisionalConfigurationProperty where
  toJSON ProvisionalConfigurationProperty {..}
    = JSON.object
        ["MaxTimeToLiveInMinutes" JSON..= maxTimeToLiveInMinutes]
instance Property "MaxTimeToLiveInMinutes" ProvisionalConfigurationProperty where
  type PropertyType "MaxTimeToLiveInMinutes" ProvisionalConfigurationProperty = Value Prelude.Integer
  set newValue ProvisionalConfigurationProperty {}
    = ProvisionalConfigurationProperty
        {maxTimeToLiveInMinutes = newValue, ..}