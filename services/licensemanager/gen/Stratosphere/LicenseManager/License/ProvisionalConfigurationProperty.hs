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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-licensemanager-license-provisionalconfiguration.html>
    ProvisionalConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-licensemanager-license-provisionalconfiguration.html#cfn-licensemanager-license-provisionalconfiguration-maxtimetoliveinminutes>
                                      maxTimeToLiveInMinutes :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProvisionalConfigurationProperty ::
  Value Prelude.Integer -> ProvisionalConfigurationProperty
mkProvisionalConfigurationProperty maxTimeToLiveInMinutes
  = ProvisionalConfigurationProperty
      {haddock_workaround_ = (),
       maxTimeToLiveInMinutes = maxTimeToLiveInMinutes}
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
  set newValue ProvisionalConfigurationProperty {..}
    = ProvisionalConfigurationProperty
        {maxTimeToLiveInMinutes = newValue, ..}