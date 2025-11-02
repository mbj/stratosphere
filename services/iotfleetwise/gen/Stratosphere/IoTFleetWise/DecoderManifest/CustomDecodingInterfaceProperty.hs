module Stratosphere.IoTFleetWise.DecoderManifest.CustomDecodingInterfaceProperty (
        CustomDecodingInterfaceProperty(..),
        mkCustomDecodingInterfaceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomDecodingInterfaceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-customdecodinginterface.html>
    CustomDecodingInterfaceProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-customdecodinginterface.html#cfn-iotfleetwise-decodermanifest-customdecodinginterface-name>
                                     name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomDecodingInterfaceProperty ::
  Value Prelude.Text -> CustomDecodingInterfaceProperty
mkCustomDecodingInterfaceProperty name
  = CustomDecodingInterfaceProperty
      {haddock_workaround_ = (), name = name}
instance ToResourceProperties CustomDecodingInterfaceProperty where
  toResourceProperties CustomDecodingInterfaceProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::DecoderManifest.CustomDecodingInterface",
         supportsTags = Prelude.False, properties = ["Name" JSON..= name]}
instance JSON.ToJSON CustomDecodingInterfaceProperty where
  toJSON CustomDecodingInterfaceProperty {..}
    = JSON.object ["Name" JSON..= name]
instance Property "Name" CustomDecodingInterfaceProperty where
  type PropertyType "Name" CustomDecodingInterfaceProperty = Value Prelude.Text
  set newValue CustomDecodingInterfaceProperty {..}
    = CustomDecodingInterfaceProperty {name = newValue, ..}