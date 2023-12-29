module Stratosphere.LicenseManager.License.BorrowConfigurationProperty (
        BorrowConfigurationProperty(..), mkBorrowConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BorrowConfigurationProperty
  = BorrowConfigurationProperty {allowEarlyCheckIn :: (Value Prelude.Bool),
                                 maxTimeToLiveInMinutes :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBorrowConfigurationProperty ::
  Value Prelude.Bool
  -> Value Prelude.Integer -> BorrowConfigurationProperty
mkBorrowConfigurationProperty
  allowEarlyCheckIn
  maxTimeToLiveInMinutes
  = BorrowConfigurationProperty
      {allowEarlyCheckIn = allowEarlyCheckIn,
       maxTimeToLiveInMinutes = maxTimeToLiveInMinutes}
instance ToResourceProperties BorrowConfigurationProperty where
  toResourceProperties BorrowConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::LicenseManager::License.BorrowConfiguration",
         supportsTags = Prelude.False,
         properties = ["AllowEarlyCheckIn" JSON..= allowEarlyCheckIn,
                       "MaxTimeToLiveInMinutes" JSON..= maxTimeToLiveInMinutes]}
instance JSON.ToJSON BorrowConfigurationProperty where
  toJSON BorrowConfigurationProperty {..}
    = JSON.object
        ["AllowEarlyCheckIn" JSON..= allowEarlyCheckIn,
         "MaxTimeToLiveInMinutes" JSON..= maxTimeToLiveInMinutes]
instance Property "AllowEarlyCheckIn" BorrowConfigurationProperty where
  type PropertyType "AllowEarlyCheckIn" BorrowConfigurationProperty = Value Prelude.Bool
  set newValue BorrowConfigurationProperty {..}
    = BorrowConfigurationProperty {allowEarlyCheckIn = newValue, ..}
instance Property "MaxTimeToLiveInMinutes" BorrowConfigurationProperty where
  type PropertyType "MaxTimeToLiveInMinutes" BorrowConfigurationProperty = Value Prelude.Integer
  set newValue BorrowConfigurationProperty {..}
    = BorrowConfigurationProperty
        {maxTimeToLiveInMinutes = newValue, ..}