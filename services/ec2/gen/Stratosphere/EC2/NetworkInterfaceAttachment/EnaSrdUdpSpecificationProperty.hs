module Stratosphere.EC2.NetworkInterfaceAttachment.EnaSrdUdpSpecificationProperty (
        EnaSrdUdpSpecificationProperty(..),
        mkEnaSrdUdpSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EnaSrdUdpSpecificationProperty
  = EnaSrdUdpSpecificationProperty {enaSrdUdpEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnaSrdUdpSpecificationProperty :: EnaSrdUdpSpecificationProperty
mkEnaSrdUdpSpecificationProperty
  = EnaSrdUdpSpecificationProperty
      {enaSrdUdpEnabled = Prelude.Nothing}
instance ToResourceProperties EnaSrdUdpSpecificationProperty where
  toResourceProperties EnaSrdUdpSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInterfaceAttachment.EnaSrdUdpSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnaSrdUdpEnabled" Prelude.<$> enaSrdUdpEnabled])}
instance JSON.ToJSON EnaSrdUdpSpecificationProperty where
  toJSON EnaSrdUdpSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnaSrdUdpEnabled" Prelude.<$> enaSrdUdpEnabled]))
instance Property "EnaSrdUdpEnabled" EnaSrdUdpSpecificationProperty where
  type PropertyType "EnaSrdUdpEnabled" EnaSrdUdpSpecificationProperty = Value Prelude.Bool
  set newValue EnaSrdUdpSpecificationProperty {}
    = EnaSrdUdpSpecificationProperty
        {enaSrdUdpEnabled = Prelude.pure newValue, ..}