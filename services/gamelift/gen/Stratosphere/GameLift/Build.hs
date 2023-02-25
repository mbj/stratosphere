module Stratosphere.GameLift.Build (
        module Exports, Build(..), mkBuild
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GameLift.Build.StorageLocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Build
  = Build {name :: (Prelude.Maybe (Value Prelude.Text)),
           operatingSystem :: (Prelude.Maybe (Value Prelude.Text)),
           storageLocation :: (Prelude.Maybe StorageLocationProperty),
           version :: (Prelude.Maybe (Value Prelude.Text))}
mkBuild :: Build
mkBuild
  = Build
      {name = Prelude.Nothing, operatingSystem = Prelude.Nothing,
       storageLocation = Prelude.Nothing, version = Prelude.Nothing}
instance ToResourceProperties Build where
  toResourceProperties Build {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::Build",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "OperatingSystem" Prelude.<$> operatingSystem,
                            (JSON..=) "StorageLocation" Prelude.<$> storageLocation,
                            (JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON Build where
  toJSON Build {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "OperatingSystem" Prelude.<$> operatingSystem,
               (JSON..=) "StorageLocation" Prelude.<$> storageLocation,
               (JSON..=) "Version" Prelude.<$> version]))
instance Property "Name" Build where
  type PropertyType "Name" Build = Value Prelude.Text
  set newValue Build {..} = Build {name = Prelude.pure newValue, ..}
instance Property "OperatingSystem" Build where
  type PropertyType "OperatingSystem" Build = Value Prelude.Text
  set newValue Build {..}
    = Build {operatingSystem = Prelude.pure newValue, ..}
instance Property "StorageLocation" Build where
  type PropertyType "StorageLocation" Build = StorageLocationProperty
  set newValue Build {..}
    = Build {storageLocation = Prelude.pure newValue, ..}
instance Property "Version" Build where
  type PropertyType "Version" Build = Value Prelude.Text
  set newValue Build {..}
    = Build {version = Prelude.pure newValue, ..}