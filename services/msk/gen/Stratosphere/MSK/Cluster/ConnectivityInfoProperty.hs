module Stratosphere.MSK.Cluster.ConnectivityInfoProperty (
        module Exports, ConnectivityInfoProperty(..),
        mkConnectivityInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.Cluster.PublicAccessProperty as Exports
import {-# SOURCE #-} Stratosphere.MSK.Cluster.VpcConnectivityProperty as Exports
import Stratosphere.ResourceProperties
data ConnectivityInfoProperty
  = ConnectivityInfoProperty {publicAccess :: (Prelude.Maybe PublicAccessProperty),
                              vpcConnectivity :: (Prelude.Maybe VpcConnectivityProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectivityInfoProperty :: ConnectivityInfoProperty
mkConnectivityInfoProperty
  = ConnectivityInfoProperty
      {publicAccess = Prelude.Nothing, vpcConnectivity = Prelude.Nothing}
instance ToResourceProperties ConnectivityInfoProperty where
  toResourceProperties ConnectivityInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.ConnectivityInfo",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PublicAccess" Prelude.<$> publicAccess,
                            (JSON..=) "VpcConnectivity" Prelude.<$> vpcConnectivity])}
instance JSON.ToJSON ConnectivityInfoProperty where
  toJSON ConnectivityInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PublicAccess" Prelude.<$> publicAccess,
               (JSON..=) "VpcConnectivity" Prelude.<$> vpcConnectivity]))
instance Property "PublicAccess" ConnectivityInfoProperty where
  type PropertyType "PublicAccess" ConnectivityInfoProperty = PublicAccessProperty
  set newValue ConnectivityInfoProperty {..}
    = ConnectivityInfoProperty
        {publicAccess = Prelude.pure newValue, ..}
instance Property "VpcConnectivity" ConnectivityInfoProperty where
  type PropertyType "VpcConnectivity" ConnectivityInfoProperty = VpcConnectivityProperty
  set newValue ConnectivityInfoProperty {..}
    = ConnectivityInfoProperty
        {vpcConnectivity = Prelude.pure newValue, ..}