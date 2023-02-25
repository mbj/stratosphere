module Stratosphere.IoTFleetWise.SignalCatalog (
        module Exports, SignalCatalog(..), mkSignalCatalog
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTFleetWise.SignalCatalog.NodeProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTFleetWise.SignalCatalog.NodeCountsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SignalCatalog
  = SignalCatalog {description :: (Prelude.Maybe (Value Prelude.Text)),
                   name :: (Prelude.Maybe (Value Prelude.Text)),
                   nodeCounts :: (Prelude.Maybe NodeCountsProperty),
                   nodes :: (Prelude.Maybe [NodeProperty]),
                   tags :: (Prelude.Maybe [Tag])}
mkSignalCatalog :: SignalCatalog
mkSignalCatalog
  = SignalCatalog
      {description = Prelude.Nothing, name = Prelude.Nothing,
       nodeCounts = Prelude.Nothing, nodes = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties SignalCatalog where
  toResourceProperties SignalCatalog {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::SignalCatalog",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "NodeCounts" Prelude.<$> nodeCounts,
                            (JSON..=) "Nodes" Prelude.<$> nodes,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON SignalCatalog where
  toJSON SignalCatalog {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "NodeCounts" Prelude.<$> nodeCounts,
               (JSON..=) "Nodes" Prelude.<$> nodes,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Description" SignalCatalog where
  type PropertyType "Description" SignalCatalog = Value Prelude.Text
  set newValue SignalCatalog {..}
    = SignalCatalog {description = Prelude.pure newValue, ..}
instance Property "Name" SignalCatalog where
  type PropertyType "Name" SignalCatalog = Value Prelude.Text
  set newValue SignalCatalog {..}
    = SignalCatalog {name = Prelude.pure newValue, ..}
instance Property "NodeCounts" SignalCatalog where
  type PropertyType "NodeCounts" SignalCatalog = NodeCountsProperty
  set newValue SignalCatalog {..}
    = SignalCatalog {nodeCounts = Prelude.pure newValue, ..}
instance Property "Nodes" SignalCatalog where
  type PropertyType "Nodes" SignalCatalog = [NodeProperty]
  set newValue SignalCatalog {..}
    = SignalCatalog {nodes = Prelude.pure newValue, ..}
instance Property "Tags" SignalCatalog where
  type PropertyType "Tags" SignalCatalog = [Tag]
  set newValue SignalCatalog {..}
    = SignalCatalog {tags = Prelude.pure newValue, ..}