module Stratosphere.IoTAnalytics.Dataset.DatasetContentDeliveryRuleProperty (
        module Exports, DatasetContentDeliveryRuleProperty(..),
        mkDatasetContentDeliveryRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.DatasetContentDeliveryRuleDestinationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatasetContentDeliveryRuleProperty
  = DatasetContentDeliveryRuleProperty {destination :: DatasetContentDeliveryRuleDestinationProperty,
                                        entryName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatasetContentDeliveryRuleProperty ::
  DatasetContentDeliveryRuleDestinationProperty
  -> DatasetContentDeliveryRuleProperty
mkDatasetContentDeliveryRuleProperty destination
  = DatasetContentDeliveryRuleProperty
      {destination = destination, entryName = Prelude.Nothing}
instance ToResourceProperties DatasetContentDeliveryRuleProperty where
  toResourceProperties DatasetContentDeliveryRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.DatasetContentDeliveryRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Destination" JSON..= destination]
                           (Prelude.catMaybes [(JSON..=) "EntryName" Prelude.<$> entryName]))}
instance JSON.ToJSON DatasetContentDeliveryRuleProperty where
  toJSON DatasetContentDeliveryRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Destination" JSON..= destination]
              (Prelude.catMaybes [(JSON..=) "EntryName" Prelude.<$> entryName])))
instance Property "Destination" DatasetContentDeliveryRuleProperty where
  type PropertyType "Destination" DatasetContentDeliveryRuleProperty = DatasetContentDeliveryRuleDestinationProperty
  set newValue DatasetContentDeliveryRuleProperty {..}
    = DatasetContentDeliveryRuleProperty {destination = newValue, ..}
instance Property "EntryName" DatasetContentDeliveryRuleProperty where
  type PropertyType "EntryName" DatasetContentDeliveryRuleProperty = Value Prelude.Text
  set newValue DatasetContentDeliveryRuleProperty {..}
    = DatasetContentDeliveryRuleProperty
        {entryName = Prelude.pure newValue, ..}