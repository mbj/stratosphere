module Stratosphere.LicenseManager.License.EntitlementProperty (
        EntitlementProperty(..), mkEntitlementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EntitlementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-licensemanager-license-entitlement.html>
    EntitlementProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-licensemanager-license-entitlement.html#cfn-licensemanager-license-entitlement-allowcheckin>
                         allowCheckIn :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-licensemanager-license-entitlement.html#cfn-licensemanager-license-entitlement-maxcount>
                         maxCount :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-licensemanager-license-entitlement.html#cfn-licensemanager-license-entitlement-name>
                         name :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-licensemanager-license-entitlement.html#cfn-licensemanager-license-entitlement-overage>
                         overage :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-licensemanager-license-entitlement.html#cfn-licensemanager-license-entitlement-unit>
                         unit :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-licensemanager-license-entitlement.html#cfn-licensemanager-license-entitlement-value>
                         value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEntitlementProperty ::
  Value Prelude.Text -> Value Prelude.Text -> EntitlementProperty
mkEntitlementProperty name unit
  = EntitlementProperty
      {haddock_workaround_ = (), name = name, unit = unit,
       allowCheckIn = Prelude.Nothing, maxCount = Prelude.Nothing,
       overage = Prelude.Nothing, value = Prelude.Nothing}
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