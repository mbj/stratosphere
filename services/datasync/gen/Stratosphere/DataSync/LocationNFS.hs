module Stratosphere.DataSync.LocationNFS (
        module Exports, LocationNFS(..), mkLocationNFS
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.LocationNFS.MountOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.DataSync.LocationNFS.OnPremConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LocationNFS
  = LocationNFS {mountOptions :: (Prelude.Maybe MountOptionsProperty),
                 onPremConfig :: OnPremConfigProperty,
                 serverHostname :: (Prelude.Maybe (Value Prelude.Text)),
                 subdirectory :: (Prelude.Maybe (Value Prelude.Text)),
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocationNFS :: OnPremConfigProperty -> LocationNFS
mkLocationNFS onPremConfig
  = LocationNFS
      {onPremConfig = onPremConfig, mountOptions = Prelude.Nothing,
       serverHostname = Prelude.Nothing, subdirectory = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties LocationNFS where
  toResourceProperties LocationNFS {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::LocationNFS",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["OnPremConfig" JSON..= onPremConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "MountOptions" Prelude.<$> mountOptions,
                               (JSON..=) "ServerHostname" Prelude.<$> serverHostname,
                               (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LocationNFS where
  toJSON LocationNFS {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["OnPremConfig" JSON..= onPremConfig]
              (Prelude.catMaybes
                 [(JSON..=) "MountOptions" Prelude.<$> mountOptions,
                  (JSON..=) "ServerHostname" Prelude.<$> serverHostname,
                  (JSON..=) "Subdirectory" Prelude.<$> subdirectory,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "MountOptions" LocationNFS where
  type PropertyType "MountOptions" LocationNFS = MountOptionsProperty
  set newValue LocationNFS {..}
    = LocationNFS {mountOptions = Prelude.pure newValue, ..}
instance Property "OnPremConfig" LocationNFS where
  type PropertyType "OnPremConfig" LocationNFS = OnPremConfigProperty
  set newValue LocationNFS {..}
    = LocationNFS {onPremConfig = newValue, ..}
instance Property "ServerHostname" LocationNFS where
  type PropertyType "ServerHostname" LocationNFS = Value Prelude.Text
  set newValue LocationNFS {..}
    = LocationNFS {serverHostname = Prelude.pure newValue, ..}
instance Property "Subdirectory" LocationNFS where
  type PropertyType "Subdirectory" LocationNFS = Value Prelude.Text
  set newValue LocationNFS {..}
    = LocationNFS {subdirectory = Prelude.pure newValue, ..}
instance Property "Tags" LocationNFS where
  type PropertyType "Tags" LocationNFS = [Tag]
  set newValue LocationNFS {..}
    = LocationNFS {tags = Prelude.pure newValue, ..}