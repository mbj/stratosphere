module Stratosphere.DynamoDB.GlobalTable.ReadOnDemandThroughputSettingsProperty (
        ReadOnDemandThroughputSettingsProperty(..),
        mkReadOnDemandThroughputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReadOnDemandThroughputSettingsProperty
  = ReadOnDemandThroughputSettingsProperty {maxReadRequestUnits :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReadOnDemandThroughputSettingsProperty ::
  ReadOnDemandThroughputSettingsProperty
mkReadOnDemandThroughputSettingsProperty
  = ReadOnDemandThroughputSettingsProperty
      {maxReadRequestUnits = Prelude.Nothing}
instance ToResourceProperties ReadOnDemandThroughputSettingsProperty where
  toResourceProperties ReadOnDemandThroughputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.ReadOnDemandThroughputSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxReadRequestUnits" Prelude.<$> maxReadRequestUnits])}
instance JSON.ToJSON ReadOnDemandThroughputSettingsProperty where
  toJSON ReadOnDemandThroughputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxReadRequestUnits" Prelude.<$> maxReadRequestUnits]))
instance Property "MaxReadRequestUnits" ReadOnDemandThroughputSettingsProperty where
  type PropertyType "MaxReadRequestUnits" ReadOnDemandThroughputSettingsProperty = Value Prelude.Integer
  set newValue ReadOnDemandThroughputSettingsProperty {}
    = ReadOnDemandThroughputSettingsProperty
        {maxReadRequestUnits = Prelude.pure newValue, ..}