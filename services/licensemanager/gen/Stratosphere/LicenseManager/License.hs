module Stratosphere.LicenseManager.License (
        module Exports, License(..), mkLicense
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LicenseManager.License.ConsumptionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.LicenseManager.License.EntitlementProperty as Exports
import {-# SOURCE #-} Stratosphere.LicenseManager.License.IssuerDataProperty as Exports
import {-# SOURCE #-} Stratosphere.LicenseManager.License.MetadataProperty as Exports
import {-# SOURCE #-} Stratosphere.LicenseManager.License.ValidityDateFormatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data License
  = License {beneficiary :: (Prelude.Maybe (Value Prelude.Text)),
             consumptionConfiguration :: ConsumptionConfigurationProperty,
             entitlements :: [EntitlementProperty],
             homeRegion :: (Value Prelude.Text),
             issuer :: IssuerDataProperty,
             licenseMetadata :: (Prelude.Maybe [MetadataProperty]),
             licenseName :: (Value Prelude.Text),
             productName :: (Value Prelude.Text),
             productSKU :: (Prelude.Maybe (Value Prelude.Text)),
             status :: (Prelude.Maybe (Value Prelude.Text)),
             validity :: ValidityDateFormatProperty}
mkLicense ::
  ConsumptionConfigurationProperty
  -> [EntitlementProperty]
     -> Value Prelude.Text
        -> IssuerDataProperty
           -> Value Prelude.Text
              -> Value Prelude.Text -> ValidityDateFormatProperty -> License
mkLicense
  consumptionConfiguration
  entitlements
  homeRegion
  issuer
  licenseName
  productName
  validity
  = License
      {consumptionConfiguration = consumptionConfiguration,
       entitlements = entitlements, homeRegion = homeRegion,
       issuer = issuer, licenseName = licenseName,
       productName = productName, validity = validity,
       beneficiary = Prelude.Nothing, licenseMetadata = Prelude.Nothing,
       productSKU = Prelude.Nothing, status = Prelude.Nothing}
instance ToResourceProperties License where
  toResourceProperties License {..}
    = ResourceProperties
        {awsType = "AWS::LicenseManager::License",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConsumptionConfiguration" JSON..= consumptionConfiguration,
                            "Entitlements" JSON..= entitlements,
                            "HomeRegion" JSON..= homeRegion, "Issuer" JSON..= issuer,
                            "LicenseName" JSON..= licenseName,
                            "ProductName" JSON..= productName, "Validity" JSON..= validity]
                           (Prelude.catMaybes
                              [(JSON..=) "Beneficiary" Prelude.<$> beneficiary,
                               (JSON..=) "LicenseMetadata" Prelude.<$> licenseMetadata,
                               (JSON..=) "ProductSKU" Prelude.<$> productSKU,
                               (JSON..=) "Status" Prelude.<$> status]))}
instance JSON.ToJSON License where
  toJSON License {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConsumptionConfiguration" JSON..= consumptionConfiguration,
               "Entitlements" JSON..= entitlements,
               "HomeRegion" JSON..= homeRegion, "Issuer" JSON..= issuer,
               "LicenseName" JSON..= licenseName,
               "ProductName" JSON..= productName, "Validity" JSON..= validity]
              (Prelude.catMaybes
                 [(JSON..=) "Beneficiary" Prelude.<$> beneficiary,
                  (JSON..=) "LicenseMetadata" Prelude.<$> licenseMetadata,
                  (JSON..=) "ProductSKU" Prelude.<$> productSKU,
                  (JSON..=) "Status" Prelude.<$> status])))
instance Property "Beneficiary" License where
  type PropertyType "Beneficiary" License = Value Prelude.Text
  set newValue License {..}
    = License {beneficiary = Prelude.pure newValue, ..}
instance Property "ConsumptionConfiguration" License where
  type PropertyType "ConsumptionConfiguration" License = ConsumptionConfigurationProperty
  set newValue License {..}
    = License {consumptionConfiguration = newValue, ..}
instance Property "Entitlements" License where
  type PropertyType "Entitlements" License = [EntitlementProperty]
  set newValue License {..} = License {entitlements = newValue, ..}
instance Property "HomeRegion" License where
  type PropertyType "HomeRegion" License = Value Prelude.Text
  set newValue License {..} = License {homeRegion = newValue, ..}
instance Property "Issuer" License where
  type PropertyType "Issuer" License = IssuerDataProperty
  set newValue License {..} = License {issuer = newValue, ..}
instance Property "LicenseMetadata" License where
  type PropertyType "LicenseMetadata" License = [MetadataProperty]
  set newValue License {..}
    = License {licenseMetadata = Prelude.pure newValue, ..}
instance Property "LicenseName" License where
  type PropertyType "LicenseName" License = Value Prelude.Text
  set newValue License {..} = License {licenseName = newValue, ..}
instance Property "ProductName" License where
  type PropertyType "ProductName" License = Value Prelude.Text
  set newValue License {..} = License {productName = newValue, ..}
instance Property "ProductSKU" License where
  type PropertyType "ProductSKU" License = Value Prelude.Text
  set newValue License {..}
    = License {productSKU = Prelude.pure newValue, ..}
instance Property "Status" License where
  type PropertyType "Status" License = Value Prelude.Text
  set newValue License {..}
    = License {status = Prelude.pure newValue, ..}
instance Property "Validity" License where
  type PropertyType "Validity" License = ValidityDateFormatProperty
  set newValue License {..} = License {validity = newValue, ..}