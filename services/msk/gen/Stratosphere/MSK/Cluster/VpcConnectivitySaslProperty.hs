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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-vpcconnectivitysasl.html>
    VpcConnectivitySaslProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-vpcconnectivitysasl.html#cfn-msk-cluster-vpcconnectivitysasl-iam>
                                 iam :: (Prelude.Maybe VpcConnectivityIamProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-vpcconnectivitysasl.html#cfn-msk-cluster-vpcconnectivitysasl-scram>
                                 scram :: (Prelude.Maybe VpcConnectivityScramProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcConnectivitySaslProperty :: VpcConnectivitySaslProperty
mkVpcConnectivitySaslProperty
  = VpcConnectivitySaslProperty
      {haddock_workaround_ = (), iam = Prelude.Nothing,
       scram = Prelude.Nothing}
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