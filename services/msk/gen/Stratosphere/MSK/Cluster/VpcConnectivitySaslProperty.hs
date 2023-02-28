module Stratosphere.MSK.Cluster.VpcConnectivitySaslProperty (
        module Exports, VpcConnectivitySaslProperty(..),
        mkVpcConnectivitySaslProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.Cluster.VpcConnectivityIamProperty as Exports
import {-# SOURCE #-} Stratosphere.MSK.Cluster.VpcConnectivityScramProperty as Exports
import Stratosphere.ResourceProperties
data VpcConnectivitySaslProperty
  = VpcConnectivitySaslProperty {iam :: (Prelude.Maybe VpcConnectivityIamProperty),
                                 scram :: (Prelude.Maybe VpcConnectivityScramProperty)}
mkVpcConnectivitySaslProperty :: VpcConnectivitySaslProperty
mkVpcConnectivitySaslProperty
  = VpcConnectivitySaslProperty
      {iam = Prelude.Nothing, scram = Prelude.Nothing}
instance ToResourceProperties VpcConnectivitySaslProperty where
  toResourceProperties VpcConnectivitySaslProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.VpcConnectivitySasl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Iam" Prelude.<$> iam,
                            (JSON..=) "Scram" Prelude.<$> scram])}
instance JSON.ToJSON VpcConnectivitySaslProperty where
  toJSON VpcConnectivitySaslProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Iam" Prelude.<$> iam,
               (JSON..=) "Scram" Prelude.<$> scram]))
instance Property "Iam" VpcConnectivitySaslProperty where
  type PropertyType "Iam" VpcConnectivitySaslProperty = VpcConnectivityIamProperty
  set newValue VpcConnectivitySaslProperty {..}
    = VpcConnectivitySaslProperty {iam = Prelude.pure newValue, ..}
instance Property "Scram" VpcConnectivitySaslProperty where
  type PropertyType "Scram" VpcConnectivitySaslProperty = VpcConnectivityScramProperty
  set newValue VpcConnectivitySaslProperty {..}
    = VpcConnectivitySaslProperty {scram = Prelude.pure newValue, ..}