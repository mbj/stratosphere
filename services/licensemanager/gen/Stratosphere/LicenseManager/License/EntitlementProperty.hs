module Stratosphere.LicenseManager.License.EntitlementProperty (
        EntitlementProperty(..), mkEntitlementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EntitlementProperty
  = EntitlementProperty {allowCheckIn :: (Prelude.Maybe (Value Prelude.Bool)),
                         maxCount :: (Prelude.Maybe (Value Prelude.Integer)),
                         name :: (Value Prelude.Text),
                         overage :: (Prelude.Maybe (Value Prelude.Bool)),
                         unit :: (Value Prelude.Text),
                         value :: (Prelude.Maybe (Value Prelude.Text))}
mkEntitlementProperty ::
  Value Prelude.Text -> Value Prelude.Text -> EntitlementProperty
mkEntitlementProperty name unit
  = EntitlementProperty
      {name = name, unit = unit, allowCheckIn = Prelude.Nothing,
       maxCount = Prelude.Nothing, overage = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties EntitlementProperty where
  toResourceProperties EntitlementProperty {..}
    = ResourceProperties
        {awsType = "AWS::LicenseManager::License.Entitlement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Unit" JSON..= unit]
                           (Prelude.catMaybes
                              [(JSON..=) "AllowCheckIn" Prelude.<$> allowCheckIn,
                               (JSON..=) "MaxCount" Prelude.<$> maxCount,
                               (JSON..=) "Overage" Prelude.<$> overage,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON EntitlementProperty where
  toJSON EntitlementProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Unit" JSON..= unit]
              (Prelude.catMaybes
                 [(JSON..=) "AllowCheckIn" Prelude.<$> allowCheckIn,
                  (JSON..=) "MaxCount" Prelude.<$> maxCount,
                  (JSON..=) "Overage" Prelude.<$> overage,
                  (JSON..=) "Value" Prelude.<$> value])))
instance Property "AllowCheckIn" EntitlementProperty where
  type PropertyType "AllowCheckIn" EntitlementProperty = Value Prelude.Bool
  set newValue EntitlementProperty {..}
    = EntitlementProperty {allowCheckIn = Prelude.pure newValue, ..}
instance Property "MaxCount" EntitlementProperty where
  type PropertyType "MaxCount" EntitlementProperty = Value Prelude.Integer
  set newValue EntitlementProperty {..}
    = EntitlementProperty {maxCount = Prelude.pure newValue, ..}
instance Property "Name" EntitlementProperty where
  type PropertyType "Name" EntitlementProperty = Value Prelude.Text
  set newValue EntitlementProperty {..}
    = EntitlementProperty {name = newValue, ..}
instance Property "Overage" EntitlementProperty where
  type PropertyType "Overage" EntitlementProperty = Value Prelude.Bool
  set newValue EntitlementProperty {..}
    = EntitlementProperty {overage = Prelude.pure newValue, ..}
instance Property "Unit" EntitlementProperty where
  type PropertyType "Unit" EntitlementProperty = Value Prelude.Text
  set newValue EntitlementProperty {..}
    = EntitlementProperty {unit = newValue, ..}
instance Property "Value" EntitlementProperty where
  type PropertyType "Value" EntitlementProperty = Value Prelude.Text
  set newValue EntitlementProperty {..}
    = EntitlementProperty {value = Prelude.pure newValue, ..}