module Stratosphere.IoTFleetWise.ModelManifest (
        ModelManifest(..), mkModelManifest
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ModelManifest
  = ModelManifest {description :: (Prelude.Maybe (Value Prelude.Text)),
                   name :: (Value Prelude.Text),
                   nodes :: (Prelude.Maybe (ValueList Prelude.Text)),
                   signalCatalogArn :: (Value Prelude.Text),
                   status :: (Prelude.Maybe (Value Prelude.Text)),
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelManifest ::
  Value Prelude.Text -> Value Prelude.Text -> ModelManifest
mkModelManifest name signalCatalogArn
  = ModelManifest
      {name = name, signalCatalogArn = signalCatalogArn,
       description = Prelude.Nothing, nodes = Prelude.Nothing,
       status = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ModelManifest where
  toResourceProperties ModelManifest {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::ModelManifest",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "SignalCatalogArn" JSON..= signalCatalogArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Nodes" Prelude.<$> nodes,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ModelManifest where
  toJSON ModelManifest {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "SignalCatalogArn" JSON..= signalCatalogArn]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Nodes" Prelude.<$> nodes,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" ModelManifest where
  type PropertyType "Description" ModelManifest = Value Prelude.Text
  set newValue ModelManifest {..}
    = ModelManifest {description = Prelude.pure newValue, ..}
instance Property "Name" ModelManifest where
  type PropertyType "Name" ModelManifest = Value Prelude.Text
  set newValue ModelManifest {..}
    = ModelManifest {name = newValue, ..}
instance Property "Nodes" ModelManifest where
  type PropertyType "Nodes" ModelManifest = ValueList Prelude.Text
  set newValue ModelManifest {..}
    = ModelManifest {nodes = Prelude.pure newValue, ..}
instance Property "SignalCatalogArn" ModelManifest where
  type PropertyType "SignalCatalogArn" ModelManifest = Value Prelude.Text
  set newValue ModelManifest {..}
    = ModelManifest {signalCatalogArn = newValue, ..}
instance Property "Status" ModelManifest where
  type PropertyType "Status" ModelManifest = Value Prelude.Text
  set newValue ModelManifest {..}
    = ModelManifest {status = Prelude.pure newValue, ..}
instance Property "Tags" ModelManifest where
  type PropertyType "Tags" ModelManifest = [Tag]
  set newValue ModelManifest {..}
    = ModelManifest {tags = Prelude.pure newValue, ..}