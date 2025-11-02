module Stratosphere.MSK.Cluster.EncryptionInfoProperty (
        module Exports, EncryptionInfoProperty(..),
        mkEncryptionInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.Cluster.EncryptionAtRestProperty as Exports
import {-# SOURCE #-} Stratosphere.MSK.Cluster.EncryptionInTransitProperty as Exports
import Stratosphere.ResourceProperties
data EncryptionInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptioninfo.html>
    EncryptionInfoProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptioninfo.html#cfn-msk-cluster-encryptioninfo-encryptionatrest>
                            encryptionAtRest :: (Prelude.Maybe EncryptionAtRestProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptioninfo.html#cfn-msk-cluster-encryptioninfo-encryptionintransit>
                            encryptionInTransit :: (Prelude.Maybe EncryptionInTransitProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionInfoProperty :: EncryptionInfoProperty
mkEncryptionInfoProperty
  = EncryptionInfoProperty
      {haddock_workaround_ = (), encryptionAtRest = Prelude.Nothing,
       encryptionInTransit = Prelude.Nothing}
instance ToResourceProperties EncryptionInfoProperty where
  toResourceProperties EncryptionInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.EncryptionInfo",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EncryptionAtRest" Prelude.<$> encryptionAtRest,
                            (JSON..=) "EncryptionInTransit" Prelude.<$> encryptionInTransit])}
instance JSON.ToJSON EncryptionInfoProperty where
  toJSON EncryptionInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EncryptionAtRest" Prelude.<$> encryptionAtRest,
               (JSON..=) "EncryptionInTransit" Prelude.<$> encryptionInTransit]))
instance Property "EncryptionAtRest" EncryptionInfoProperty where
  type PropertyType "EncryptionAtRest" EncryptionInfoProperty = EncryptionAtRestProperty
  set newValue EncryptionInfoProperty {..}
    = EncryptionInfoProperty
        {encryptionAtRest = Prelude.pure newValue, ..}
instance Property "EncryptionInTransit" EncryptionInfoProperty where
  type PropertyType "EncryptionInTransit" EncryptionInfoProperty = EncryptionInTransitProperty
  set newValue EncryptionInfoProperty {..}
    = EncryptionInfoProperty
        {encryptionInTransit = Prelude.pure newValue, ..}