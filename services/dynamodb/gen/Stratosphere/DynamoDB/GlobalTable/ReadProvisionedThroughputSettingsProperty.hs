module Stratosphere.DynamoDB.GlobalTable.ReadProvisionedThroughputSettingsProperty (
        module Exports, ReadProvisionedThroughputSettingsProperty(..),
        mkReadProvisionedThroughputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.CapacityAutoScalingSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReadProvisionedThroughputSettingsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-readprovisionedthroughputsettings.html>
    ReadProvisionedThroughputSettingsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-readprovisionedthroughputsettings.html#cfn-dynamodb-globaltable-readprovisionedthroughputsettings-readcapacityautoscalingsettings>
                                               readCapacityAutoScalingSettings :: (Prelude.Maybe CapacityAutoScalingSettingsProperty),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-readprovisionedthroughputsettings.html#cfn-dynamodb-globaltable-readprovisionedthroughputsettings-readcapacityunits>
                                               readCapacityUnits :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReadProvisionedThroughputSettingsProperty ::
  ReadProvisionedThroughputSettingsProperty
mkReadProvisionedThroughputSettingsProperty
  = ReadProvisionedThroughputSettingsProperty
      {readCapacityAutoScalingSettings = Prelude.Nothing,
       readCapacityUnits = Prelude.Nothing}
instance ToResourceProperties ReadProvisionedThroughputSettingsProperty where
  toResourceProperties ReadProvisionedThroughputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.ReadProvisionedThroughputSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ReadCapacityAutoScalingSettings"
                              Prelude.<$> readCapacityAutoScalingSettings,
                            (JSON..=) "ReadCapacityUnits" Prelude.<$> readCapacityUnits])}
instance JSON.ToJSON ReadProvisionedThroughputSettingsProperty where
  toJSON ReadProvisionedThroughputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ReadCapacityAutoScalingSettings"
                 Prelude.<$> readCapacityAutoScalingSettings,
               (JSON..=) "ReadCapacityUnits" Prelude.<$> readCapacityUnits]))
instance Property "ReadCapacityAutoScalingSettings" ReadProvisionedThroughputSettingsProperty where
  type PropertyType "ReadCapacityAutoScalingSettings" ReadProvisionedThroughputSettingsProperty = CapacityAutoScalingSettingsProperty
  set newValue ReadProvisionedThroughputSettingsProperty {..}
    = ReadProvisionedThroughputSettingsProperty
        {readCapacityAutoScalingSettings = Prelude.pure newValue, ..}
instance Property "ReadCapacityUnits" ReadProvisionedThroughputSettingsProperty where
  type PropertyType "ReadCapacityUnits" ReadProvisionedThroughputSettingsProperty = Value Prelude.Integer
  set newValue ReadProvisionedThroughputSettingsProperty {..}
    = ReadProvisionedThroughputSettingsProperty
        {readCapacityUnits = Prelude.pure newValue, ..}