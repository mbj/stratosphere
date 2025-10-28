module Stratosphere.MediaConnect.FlowOutput.InterfaceProperty (
        InterfaceProperty(..), mkInterfaceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InterfaceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flowoutput-interface.html>
    InterfaceProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flowoutput-interface.html#cfn-mediaconnect-flowoutput-interface-name>
                       name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInterfaceProperty :: Value Prelude.Text -> InterfaceProperty
mkInterfaceProperty name
  = InterfaceProperty {haddock_workaround_ = (), name = name}
instance ToResourceProperties InterfaceProperty where
  toResourceProperties InterfaceProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::FlowOutput.Interface",
         supportsTags = Prelude.False, properties = ["Name" JSON..= name]}
instance JSON.ToJSON InterfaceProperty where
  toJSON InterfaceProperty {..} = JSON.object ["Name" JSON..= name]
instance Property "Name" InterfaceProperty where
  type PropertyType "Name" InterfaceProperty = Value Prelude.Text
  set newValue InterfaceProperty {..}
    = InterfaceProperty {name = newValue, ..}