module Stratosphere.ServiceCatalog.CloudFormationProvisionedProduct.ProvisioningPreferencesProperty (
        ProvisioningPreferencesProperty(..),
        mkProvisioningPreferencesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProvisioningPreferencesProperty
  = ProvisioningPreferencesProperty {stackSetAccounts :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     stackSetFailureToleranceCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                     stackSetFailureTolerancePercentage :: (Prelude.Maybe (Value Prelude.Integer)),
                                     stackSetMaxConcurrencyCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                     stackSetMaxConcurrencyPercentage :: (Prelude.Maybe (Value Prelude.Integer)),
                                     stackSetOperationType :: (Prelude.Maybe (Value Prelude.Text)),
                                     stackSetRegions :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProvisioningPreferencesProperty ::
  ProvisioningPreferencesProperty
mkProvisioningPreferencesProperty
  = ProvisioningPreferencesProperty
      {stackSetAccounts = Prelude.Nothing,
       stackSetFailureToleranceCount = Prelude.Nothing,
       stackSetFailureTolerancePercentage = Prelude.Nothing,
       stackSetMaxConcurrencyCount = Prelude.Nothing,
       stackSetMaxConcurrencyPercentage = Prelude.Nothing,
       stackSetOperationType = Prelude.Nothing,
       stackSetRegions = Prelude.Nothing}
instance ToResourceProperties ProvisioningPreferencesProperty where
  toResourceProperties ProvisioningPreferencesProperty {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::CloudFormationProvisionedProduct.ProvisioningPreferences",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StackSetAccounts" Prelude.<$> stackSetAccounts,
                            (JSON..=) "StackSetFailureToleranceCount"
                              Prelude.<$> stackSetFailureToleranceCount,
                            (JSON..=) "StackSetFailureTolerancePercentage"
                              Prelude.<$> stackSetFailureTolerancePercentage,
                            (JSON..=) "StackSetMaxConcurrencyCount"
                              Prelude.<$> stackSetMaxConcurrencyCount,
                            (JSON..=) "StackSetMaxConcurrencyPercentage"
                              Prelude.<$> stackSetMaxConcurrencyPercentage,
                            (JSON..=) "StackSetOperationType"
                              Prelude.<$> stackSetOperationType,
                            (JSON..=) "StackSetRegions" Prelude.<$> stackSetRegions])}
instance JSON.ToJSON ProvisioningPreferencesProperty where
  toJSON ProvisioningPreferencesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StackSetAccounts" Prelude.<$> stackSetAccounts,
               (JSON..=) "StackSetFailureToleranceCount"
                 Prelude.<$> stackSetFailureToleranceCount,
               (JSON..=) "StackSetFailureTolerancePercentage"
                 Prelude.<$> stackSetFailureTolerancePercentage,
               (JSON..=) "StackSetMaxConcurrencyCount"
                 Prelude.<$> stackSetMaxConcurrencyCount,
               (JSON..=) "StackSetMaxConcurrencyPercentage"
                 Prelude.<$> stackSetMaxConcurrencyPercentage,
               (JSON..=) "StackSetOperationType"
                 Prelude.<$> stackSetOperationType,
               (JSON..=) "StackSetRegions" Prelude.<$> stackSetRegions]))
instance Property "StackSetAccounts" ProvisioningPreferencesProperty where
  type PropertyType "StackSetAccounts" ProvisioningPreferencesProperty = ValueList Prelude.Text
  set newValue ProvisioningPreferencesProperty {..}
    = ProvisioningPreferencesProperty
        {stackSetAccounts = Prelude.pure newValue, ..}
instance Property "StackSetFailureToleranceCount" ProvisioningPreferencesProperty where
  type PropertyType "StackSetFailureToleranceCount" ProvisioningPreferencesProperty = Value Prelude.Integer
  set newValue ProvisioningPreferencesProperty {..}
    = ProvisioningPreferencesProperty
        {stackSetFailureToleranceCount = Prelude.pure newValue, ..}
instance Property "StackSetFailureTolerancePercentage" ProvisioningPreferencesProperty where
  type PropertyType "StackSetFailureTolerancePercentage" ProvisioningPreferencesProperty = Value Prelude.Integer
  set newValue ProvisioningPreferencesProperty {..}
    = ProvisioningPreferencesProperty
        {stackSetFailureTolerancePercentage = Prelude.pure newValue, ..}
instance Property "StackSetMaxConcurrencyCount" ProvisioningPreferencesProperty where
  type PropertyType "StackSetMaxConcurrencyCount" ProvisioningPreferencesProperty = Value Prelude.Integer
  set newValue ProvisioningPreferencesProperty {..}
    = ProvisioningPreferencesProperty
        {stackSetMaxConcurrencyCount = Prelude.pure newValue, ..}
instance Property "StackSetMaxConcurrencyPercentage" ProvisioningPreferencesProperty where
  type PropertyType "StackSetMaxConcurrencyPercentage" ProvisioningPreferencesProperty = Value Prelude.Integer
  set newValue ProvisioningPreferencesProperty {..}
    = ProvisioningPreferencesProperty
        {stackSetMaxConcurrencyPercentage = Prelude.pure newValue, ..}
instance Property "StackSetOperationType" ProvisioningPreferencesProperty where
  type PropertyType "StackSetOperationType" ProvisioningPreferencesProperty = Value Prelude.Text
  set newValue ProvisioningPreferencesProperty {..}
    = ProvisioningPreferencesProperty
        {stackSetOperationType = Prelude.pure newValue, ..}
instance Property "StackSetRegions" ProvisioningPreferencesProperty where
  type PropertyType "StackSetRegions" ProvisioningPreferencesProperty = ValueList Prelude.Text
  set newValue ProvisioningPreferencesProperty {..}
    = ProvisioningPreferencesProperty
        {stackSetRegions = Prelude.pure newValue, ..}