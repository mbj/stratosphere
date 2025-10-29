module Stratosphere.LicenseManager.License.ConsumptionConfigurationProperty (
        module Exports, ConsumptionConfigurationProperty(..),
        mkConsumptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LicenseManager.License.BorrowConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.LicenseManager.License.ProvisionalConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConsumptionConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-licensemanager-license-consumptionconfiguration.html>
    ConsumptionConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-licensemanager-license-consumptionconfiguration.html#cfn-licensemanager-license-consumptionconfiguration-borrowconfiguration>
                                      borrowConfiguration :: (Prelude.Maybe BorrowConfigurationProperty),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-licensemanager-license-consumptionconfiguration.html#cfn-licensemanager-license-consumptionconfiguration-provisionalconfiguration>
                                      provisionalConfiguration :: (Prelude.Maybe ProvisionalConfigurationProperty),
                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-licensemanager-license-consumptionconfiguration.html#cfn-licensemanager-license-consumptionconfiguration-renewtype>
                                      renewType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConsumptionConfigurationProperty ::
  ConsumptionConfigurationProperty
mkConsumptionConfigurationProperty
  = ConsumptionConfigurationProperty
      {borrowConfiguration = Prelude.Nothing,
       provisionalConfiguration = Prelude.Nothing,
       renewType = Prelude.Nothing}
instance ToResourceProperties ConsumptionConfigurationProperty where
  toResourceProperties ConsumptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::LicenseManager::License.ConsumptionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BorrowConfiguration" Prelude.<$> borrowConfiguration,
                            (JSON..=) "ProvisionalConfiguration"
                              Prelude.<$> provisionalConfiguration,
                            (JSON..=) "RenewType" Prelude.<$> renewType])}
instance JSON.ToJSON ConsumptionConfigurationProperty where
  toJSON ConsumptionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BorrowConfiguration" Prelude.<$> borrowConfiguration,
               (JSON..=) "ProvisionalConfiguration"
                 Prelude.<$> provisionalConfiguration,
               (JSON..=) "RenewType" Prelude.<$> renewType]))
instance Property "BorrowConfiguration" ConsumptionConfigurationProperty where
  type PropertyType "BorrowConfiguration" ConsumptionConfigurationProperty = BorrowConfigurationProperty
  set newValue ConsumptionConfigurationProperty {..}
    = ConsumptionConfigurationProperty
        {borrowConfiguration = Prelude.pure newValue, ..}
instance Property "ProvisionalConfiguration" ConsumptionConfigurationProperty where
  type PropertyType "ProvisionalConfiguration" ConsumptionConfigurationProperty = ProvisionalConfigurationProperty
  set newValue ConsumptionConfigurationProperty {..}
    = ConsumptionConfigurationProperty
        {provisionalConfiguration = Prelude.pure newValue, ..}
instance Property "RenewType" ConsumptionConfigurationProperty where
  type PropertyType "RenewType" ConsumptionConfigurationProperty = Value Prelude.Text
  set newValue ConsumptionConfigurationProperty {..}
    = ConsumptionConfigurationProperty
        {renewType = Prelude.pure newValue, ..}