module Stratosphere.RDS.DBCluster.ReadEndpointProperty (
        ReadEndpointProperty(..), mkReadEndpointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReadEndpointProperty
  = ReadEndpointProperty {address :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReadEndpointProperty :: ReadEndpointProperty
mkReadEndpointProperty
  = ReadEndpointProperty {address = Prelude.Nothing}
instance ToResourceProperties ReadEndpointProperty where
  toResourceProperties ReadEndpointProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBCluster.ReadEndpoint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Address" Prelude.<$> address])}
instance JSON.ToJSON ReadEndpointProperty where
  toJSON ReadEndpointProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Address" Prelude.<$> address]))
instance Property "Address" ReadEndpointProperty where
  type PropertyType "Address" ReadEndpointProperty = Value Prelude.Text
  set newValue ReadEndpointProperty {}
    = ReadEndpointProperty {address = Prelude.pure newValue, ..}