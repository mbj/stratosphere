module Stratosphere.IoT1Click.Placement (
        Placement(..), mkPlacement
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Placement
  = Placement {associatedDevices :: (Prelude.Maybe JSON.Object),
               attributes :: (Prelude.Maybe JSON.Object),
               placementName :: (Prelude.Maybe (Value Prelude.Text)),
               projectName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPlacement :: Value Prelude.Text -> Placement
mkPlacement projectName
  = Placement
      {projectName = projectName, associatedDevices = Prelude.Nothing,
       attributes = Prelude.Nothing, placementName = Prelude.Nothing}
instance ToResourceProperties Placement where
  toResourceProperties Placement {..}
    = ResourceProperties
        {awsType = "AWS::IoT1Click::Placement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ProjectName" JSON..= projectName]
                           (Prelude.catMaybes
                              [(JSON..=) "AssociatedDevices" Prelude.<$> associatedDevices,
                               (JSON..=) "Attributes" Prelude.<$> attributes,
                               (JSON..=) "PlacementName" Prelude.<$> placementName]))}
instance JSON.ToJSON Placement where
  toJSON Placement {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ProjectName" JSON..= projectName]
              (Prelude.catMaybes
                 [(JSON..=) "AssociatedDevices" Prelude.<$> associatedDevices,
                  (JSON..=) "Attributes" Prelude.<$> attributes,
                  (JSON..=) "PlacementName" Prelude.<$> placementName])))
instance Property "AssociatedDevices" Placement where
  type PropertyType "AssociatedDevices" Placement = JSON.Object
  set newValue Placement {..}
    = Placement {associatedDevices = Prelude.pure newValue, ..}
instance Property "Attributes" Placement where
  type PropertyType "Attributes" Placement = JSON.Object
  set newValue Placement {..}
    = Placement {attributes = Prelude.pure newValue, ..}
instance Property "PlacementName" Placement where
  type PropertyType "PlacementName" Placement = Value Prelude.Text
  set newValue Placement {..}
    = Placement {placementName = Prelude.pure newValue, ..}
instance Property "ProjectName" Placement where
  type PropertyType "ProjectName" Placement = Value Prelude.Text
  set newValue Placement {..}
    = Placement {projectName = newValue, ..}