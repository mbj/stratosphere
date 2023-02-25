module Stratosphere.SSM.MaintenanceWindowTarget (
        module Exports, MaintenanceWindowTarget(..),
        mkMaintenanceWindowTarget
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSM.MaintenanceWindowTarget.TargetsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MaintenanceWindowTarget
  = MaintenanceWindowTarget {description :: (Prelude.Maybe (Value Prelude.Text)),
                             name :: (Prelude.Maybe (Value Prelude.Text)),
                             ownerInformation :: (Prelude.Maybe (Value Prelude.Text)),
                             resourceType :: (Value Prelude.Text),
                             targets :: [TargetsProperty],
                             windowId :: (Value Prelude.Text)}
mkMaintenanceWindowTarget ::
  Value Prelude.Text
  -> [TargetsProperty]
     -> Value Prelude.Text -> MaintenanceWindowTarget
mkMaintenanceWindowTarget resourceType targets windowId
  = MaintenanceWindowTarget
      {resourceType = resourceType, targets = targets,
       windowId = windowId, description = Prelude.Nothing,
       name = Prelude.Nothing, ownerInformation = Prelude.Nothing}
instance ToResourceProperties MaintenanceWindowTarget where
  toResourceProperties MaintenanceWindowTarget {..}
    = ResourceProperties
        {awsType = "AWS::SSM::MaintenanceWindowTarget",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResourceType" JSON..= resourceType, "Targets" JSON..= targets,
                            "WindowId" JSON..= windowId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "OwnerInformation" Prelude.<$> ownerInformation]))}
instance JSON.ToJSON MaintenanceWindowTarget where
  toJSON MaintenanceWindowTarget {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourceType" JSON..= resourceType, "Targets" JSON..= targets,
               "WindowId" JSON..= windowId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "OwnerInformation" Prelude.<$> ownerInformation])))
instance Property "Description" MaintenanceWindowTarget where
  type PropertyType "Description" MaintenanceWindowTarget = Value Prelude.Text
  set newValue MaintenanceWindowTarget {..}
    = MaintenanceWindowTarget {description = Prelude.pure newValue, ..}
instance Property "Name" MaintenanceWindowTarget where
  type PropertyType "Name" MaintenanceWindowTarget = Value Prelude.Text
  set newValue MaintenanceWindowTarget {..}
    = MaintenanceWindowTarget {name = Prelude.pure newValue, ..}
instance Property "OwnerInformation" MaintenanceWindowTarget where
  type PropertyType "OwnerInformation" MaintenanceWindowTarget = Value Prelude.Text
  set newValue MaintenanceWindowTarget {..}
    = MaintenanceWindowTarget
        {ownerInformation = Prelude.pure newValue, ..}
instance Property "ResourceType" MaintenanceWindowTarget where
  type PropertyType "ResourceType" MaintenanceWindowTarget = Value Prelude.Text
  set newValue MaintenanceWindowTarget {..}
    = MaintenanceWindowTarget {resourceType = newValue, ..}
instance Property "Targets" MaintenanceWindowTarget where
  type PropertyType "Targets" MaintenanceWindowTarget = [TargetsProperty]
  set newValue MaintenanceWindowTarget {..}
    = MaintenanceWindowTarget {targets = newValue, ..}
instance Property "WindowId" MaintenanceWindowTarget where
  type PropertyType "WindowId" MaintenanceWindowTarget = Value Prelude.Text
  set newValue MaintenanceWindowTarget {..}
    = MaintenanceWindowTarget {windowId = newValue, ..}