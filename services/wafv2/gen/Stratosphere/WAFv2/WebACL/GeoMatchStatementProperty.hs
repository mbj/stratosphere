module Stratosphere.WAFv2.WebACL.GeoMatchStatementProperty (
        module Exports, GeoMatchStatementProperty(..),
        mkGeoMatchStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.ForwardedIPConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeoMatchStatementProperty
  = GeoMatchStatementProperty {countryCodes :: (Prelude.Maybe (ValueList Prelude.Text)),
                               forwardedIPConfig :: (Prelude.Maybe ForwardedIPConfigurationProperty)}
mkGeoMatchStatementProperty :: GeoMatchStatementProperty
mkGeoMatchStatementProperty
  = GeoMatchStatementProperty
      {countryCodes = Prelude.Nothing,
       forwardedIPConfig = Prelude.Nothing}
instance ToResourceProperties GeoMatchStatementProperty where
  toResourceProperties GeoMatchStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.GeoMatchStatement",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CountryCodes" Prelude.<$> countryCodes,
                            (JSON..=) "ForwardedIPConfig" Prelude.<$> forwardedIPConfig])}
instance JSON.ToJSON GeoMatchStatementProperty where
  toJSON GeoMatchStatementProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CountryCodes" Prelude.<$> countryCodes,
               (JSON..=) "ForwardedIPConfig" Prelude.<$> forwardedIPConfig]))
instance Property "CountryCodes" GeoMatchStatementProperty where
  type PropertyType "CountryCodes" GeoMatchStatementProperty = ValueList Prelude.Text
  set newValue GeoMatchStatementProperty {..}
    = GeoMatchStatementProperty
        {countryCodes = Prelude.pure newValue, ..}
instance Property "ForwardedIPConfig" GeoMatchStatementProperty where
  type PropertyType "ForwardedIPConfig" GeoMatchStatementProperty = ForwardedIPConfigurationProperty
  set newValue GeoMatchStatementProperty {..}
    = GeoMatchStatementProperty
        {forwardedIPConfig = Prelude.pure newValue, ..}