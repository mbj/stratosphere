module Stratosphere.Lambda.Alias.ProvisionedConcurrencyConfigurationProperty (
        ProvisionedConcurrencyConfigurationProperty(..),
        mkProvisionedConcurrencyConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProvisionedConcurrencyConfigurationProperty
  = ProvisionedConcurrencyConfigurationProperty {provisionedConcurrentExecutions :: (Value Prelude.Integer)}
mkProvisionedConcurrencyConfigurationProperty ::
  Value Prelude.Integer
  -> ProvisionedConcurrencyConfigurationProperty
mkProvisionedConcurrencyConfigurationProperty
  provisionedConcurrentExecutions
  = ProvisionedConcurrencyConfigurationProperty
      {provisionedConcurrentExecutions = provisionedConcurrentExecutions}
instance ToResourceProperties ProvisionedConcurrencyConfigurationProperty where
  toResourceProperties
    ProvisionedConcurrencyConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Alias.ProvisionedConcurrencyConfiguration",
         supportsTags = Prelude.False,
         properties = ["ProvisionedConcurrentExecutions"
                         JSON..= provisionedConcurrentExecutions]}
instance JSON.ToJSON ProvisionedConcurrencyConfigurationProperty where
  toJSON ProvisionedConcurrencyConfigurationProperty {..}
    = JSON.object
        ["ProvisionedConcurrentExecutions"
           JSON..= provisionedConcurrentExecutions]
instance Property "ProvisionedConcurrentExecutions" ProvisionedConcurrencyConfigurationProperty where
  type PropertyType "ProvisionedConcurrentExecutions" ProvisionedConcurrencyConfigurationProperty = Value Prelude.Integer
  set newValue ProvisionedConcurrencyConfigurationProperty {}
    = ProvisionedConcurrencyConfigurationProperty
        {provisionedConcurrentExecutions = newValue, ..}