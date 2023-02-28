module Stratosphere.DynamoDB.GlobalTable.WriteProvisionedThroughputSettingsProperty (
        module Exports, WriteProvisionedThroughputSettingsProperty(..),
        mkWriteProvisionedThroughputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.CapacityAutoScalingSettingsProperty as Exports
import Stratosphere.ResourceProperties
data WriteProvisionedThroughputSettingsProperty
  = WriteProvisionedThroughputSettingsProperty {writeCapacityAutoScalingSettings :: (Prelude.Maybe CapacityAutoScalingSettingsProperty)}
mkWriteProvisionedThroughputSettingsProperty ::
  WriteProvisionedThroughputSettingsProperty
mkWriteProvisionedThroughputSettingsProperty
  = WriteProvisionedThroughputSettingsProperty
      {writeCapacityAutoScalingSettings = Prelude.Nothing}
instance ToResourceProperties WriteProvisionedThroughputSettingsProperty where
  toResourceProperties
    WriteProvisionedThroughputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.WriteProvisionedThroughputSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "WriteCapacityAutoScalingSettings"
                              Prelude.<$> writeCapacityAutoScalingSettings])}
instance JSON.ToJSON WriteProvisionedThroughputSettingsProperty where
  toJSON WriteProvisionedThroughputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "WriteCapacityAutoScalingSettings"
                 Prelude.<$> writeCapacityAutoScalingSettings]))
instance Property "WriteCapacityAutoScalingSettings" WriteProvisionedThroughputSettingsProperty where
  type PropertyType "WriteCapacityAutoScalingSettings" WriteProvisionedThroughputSettingsProperty = CapacityAutoScalingSettingsProperty
  set newValue WriteProvisionedThroughputSettingsProperty {}
    = WriteProvisionedThroughputSettingsProperty
        {writeCapacityAutoScalingSettings = Prelude.pure newValue, ..}