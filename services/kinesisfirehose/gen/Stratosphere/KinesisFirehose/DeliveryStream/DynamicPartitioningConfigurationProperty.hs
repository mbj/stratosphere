module Stratosphere.KinesisFirehose.DeliveryStream.DynamicPartitioningConfigurationProperty (
        module Exports, DynamicPartitioningConfigurationProperty(..),
        mkDynamicPartitioningConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.RetryOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DynamicPartitioningConfigurationProperty
  = DynamicPartitioningConfigurationProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                              retryOptions :: (Prelude.Maybe RetryOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDynamicPartitioningConfigurationProperty ::
  DynamicPartitioningConfigurationProperty
mkDynamicPartitioningConfigurationProperty
  = DynamicPartitioningConfigurationProperty
      {enabled = Prelude.Nothing, retryOptions = Prelude.Nothing}
instance ToResourceProperties DynamicPartitioningConfigurationProperty where
  toResourceProperties DynamicPartitioningConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.DynamicPartitioningConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "RetryOptions" Prelude.<$> retryOptions])}
instance JSON.ToJSON DynamicPartitioningConfigurationProperty where
  toJSON DynamicPartitioningConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "RetryOptions" Prelude.<$> retryOptions]))
instance Property "Enabled" DynamicPartitioningConfigurationProperty where
  type PropertyType "Enabled" DynamicPartitioningConfigurationProperty = Value Prelude.Bool
  set newValue DynamicPartitioningConfigurationProperty {..}
    = DynamicPartitioningConfigurationProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "RetryOptions" DynamicPartitioningConfigurationProperty where
  type PropertyType "RetryOptions" DynamicPartitioningConfigurationProperty = RetryOptionsProperty
  set newValue DynamicPartitioningConfigurationProperty {..}
    = DynamicPartitioningConfigurationProperty
        {retryOptions = Prelude.pure newValue, ..}