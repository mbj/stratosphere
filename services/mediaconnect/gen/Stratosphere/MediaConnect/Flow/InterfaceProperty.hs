module Stratosphere.MediaConnect.Flow.InterfaceProperty (
        InterfaceProperty(..), mkInterfaceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InterfaceProperty
  = InterfaceProperty {name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInterfaceProperty :: Value Prelude.Text -> InterfaceProperty
mkInterfaceProperty name = InterfaceProperty {name = name}
instance ToResourceProperties InterfaceProperty where
  toResourceProperties InterfaceProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow.Interface",
         supportsTags = Prelude.False, properties = ["Name" JSON..= name]}
instance JSON.ToJSON InterfaceProperty where
  toJSON InterfaceProperty {..} = JSON.object ["Name" JSON..= name]
instance Property "Name" InterfaceProperty where
  type PropertyType "Name" InterfaceProperty = Value Prelude.Text
  set newValue InterfaceProperty {}
    = InterfaceProperty {name = newValue, ..}