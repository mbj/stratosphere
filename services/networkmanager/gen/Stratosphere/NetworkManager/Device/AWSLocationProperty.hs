module Stratosphere.NetworkManager.Device.AWSLocationProperty (
        AWSLocationProperty(..), mkAWSLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AWSLocationProperty
  = AWSLocationProperty {subnetArn :: (Prelude.Maybe (Value Prelude.Text)),
                         zone :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAWSLocationProperty :: AWSLocationProperty
mkAWSLocationProperty
  = AWSLocationProperty
      {subnetArn = Prelude.Nothing, zone = Prelude.Nothing}
instance ToResourceProperties AWSLocationProperty where
  toResourceProperties AWSLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::Device.AWSLocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SubnetArn" Prelude.<$> subnetArn,
                            (JSON..=) "Zone" Prelude.<$> zone])}
instance JSON.ToJSON AWSLocationProperty where
  toJSON AWSLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SubnetArn" Prelude.<$> subnetArn,
               (JSON..=) "Zone" Prelude.<$> zone]))
instance Property "SubnetArn" AWSLocationProperty where
  type PropertyType "SubnetArn" AWSLocationProperty = Value Prelude.Text
  set newValue AWSLocationProperty {..}
    = AWSLocationProperty {subnetArn = Prelude.pure newValue, ..}
instance Property "Zone" AWSLocationProperty where
  type PropertyType "Zone" AWSLocationProperty = Value Prelude.Text
  set newValue AWSLocationProperty {..}
    = AWSLocationProperty {zone = Prelude.pure newValue, ..}