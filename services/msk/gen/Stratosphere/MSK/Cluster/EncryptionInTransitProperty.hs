module Stratosphere.MSK.Cluster.EncryptionInTransitProperty (
        EncryptionInTransitProperty(..), mkEncryptionInTransitProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionInTransitProperty
  = EncryptionInTransitProperty {clientBroker :: (Prelude.Maybe (Value Prelude.Text)),
                                 inCluster :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionInTransitProperty :: EncryptionInTransitProperty
mkEncryptionInTransitProperty
  = EncryptionInTransitProperty
      {clientBroker = Prelude.Nothing, inCluster = Prelude.Nothing}
instance ToResourceProperties EncryptionInTransitProperty where
  toResourceProperties EncryptionInTransitProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.EncryptionInTransit",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClientBroker" Prelude.<$> clientBroker,
                            (JSON..=) "InCluster" Prelude.<$> inCluster])}
instance JSON.ToJSON EncryptionInTransitProperty where
  toJSON EncryptionInTransitProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClientBroker" Prelude.<$> clientBroker,
               (JSON..=) "InCluster" Prelude.<$> inCluster]))
instance Property "ClientBroker" EncryptionInTransitProperty where
  type PropertyType "ClientBroker" EncryptionInTransitProperty = Value Prelude.Text
  set newValue EncryptionInTransitProperty {..}
    = EncryptionInTransitProperty
        {clientBroker = Prelude.pure newValue, ..}
instance Property "InCluster" EncryptionInTransitProperty where
  type PropertyType "InCluster" EncryptionInTransitProperty = Value Prelude.Bool
  set newValue EncryptionInTransitProperty {..}
    = EncryptionInTransitProperty
        {inCluster = Prelude.pure newValue, ..}