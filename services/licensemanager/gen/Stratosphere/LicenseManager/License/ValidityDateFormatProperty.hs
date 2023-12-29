module Stratosphere.LicenseManager.License.ValidityDateFormatProperty (
        ValidityDateFormatProperty(..), mkValidityDateFormatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ValidityDateFormatProperty
  = ValidityDateFormatProperty {begin :: (Value Prelude.Text),
                                end :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkValidityDateFormatProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ValidityDateFormatProperty
mkValidityDateFormatProperty begin end
  = ValidityDateFormatProperty {begin = begin, end = end}
instance ToResourceProperties ValidityDateFormatProperty where
  toResourceProperties ValidityDateFormatProperty {..}
    = ResourceProperties
        {awsType = "AWS::LicenseManager::License.ValidityDateFormat",
         supportsTags = Prelude.False,
         properties = ["Begin" JSON..= begin, "End" JSON..= end]}
instance JSON.ToJSON ValidityDateFormatProperty where
  toJSON ValidityDateFormatProperty {..}
    = JSON.object ["Begin" JSON..= begin, "End" JSON..= end]
instance Property "Begin" ValidityDateFormatProperty where
  type PropertyType "Begin" ValidityDateFormatProperty = Value Prelude.Text
  set newValue ValidityDateFormatProperty {..}
    = ValidityDateFormatProperty {begin = newValue, ..}
instance Property "End" ValidityDateFormatProperty where
  type PropertyType "End" ValidityDateFormatProperty = Value Prelude.Text
  set newValue ValidityDateFormatProperty {..}
    = ValidityDateFormatProperty {end = newValue, ..}