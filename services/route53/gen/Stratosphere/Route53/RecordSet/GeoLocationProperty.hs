module Stratosphere.Route53.RecordSet.GeoLocationProperty (
        GeoLocationProperty(..), mkGeoLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeoLocationProperty
  = GeoLocationProperty {continentCode :: (Prelude.Maybe (Value Prelude.Text)),
                         countryCode :: (Prelude.Maybe (Value Prelude.Text)),
                         subdivisionCode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeoLocationProperty :: GeoLocationProperty
mkGeoLocationProperty
  = GeoLocationProperty
      {continentCode = Prelude.Nothing, countryCode = Prelude.Nothing,
       subdivisionCode = Prelude.Nothing}
instance ToResourceProperties GeoLocationProperty where
  toResourceProperties GeoLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53::RecordSet.GeoLocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContinentCode" Prelude.<$> continentCode,
                            (JSON..=) "CountryCode" Prelude.<$> countryCode,
                            (JSON..=) "SubdivisionCode" Prelude.<$> subdivisionCode])}
instance JSON.ToJSON GeoLocationProperty where
  toJSON GeoLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContinentCode" Prelude.<$> continentCode,
               (JSON..=) "CountryCode" Prelude.<$> countryCode,
               (JSON..=) "SubdivisionCode" Prelude.<$> subdivisionCode]))
instance Property "ContinentCode" GeoLocationProperty where
  type PropertyType "ContinentCode" GeoLocationProperty = Value Prelude.Text
  set newValue GeoLocationProperty {..}
    = GeoLocationProperty {continentCode = Prelude.pure newValue, ..}
instance Property "CountryCode" GeoLocationProperty where
  type PropertyType "CountryCode" GeoLocationProperty = Value Prelude.Text
  set newValue GeoLocationProperty {..}
    = GeoLocationProperty {countryCode = Prelude.pure newValue, ..}
instance Property "SubdivisionCode" GeoLocationProperty where
  type PropertyType "SubdivisionCode" GeoLocationProperty = Value Prelude.Text
  set newValue GeoLocationProperty {..}
    = GeoLocationProperty {subdivisionCode = Prelude.pure newValue, ..}