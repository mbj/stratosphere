module Stratosphere.RDS.DBCluster.ReadEndpointProperty (
        ReadEndpointProperty(..), mkReadEndpointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReadEndpointProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-readendpoint.html>
    ReadEndpointProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-readendpoint.html#cfn-rds-dbcluster-readendpoint-address>
                          address :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReadEndpointProperty :: ReadEndpointProperty
mkReadEndpointProperty
  = ReadEndpointProperty
      {haddock_workaround_ = (), address = Prelude.Nothing}
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
  set newValue ReadEndpointProperty {..}
    = ReadEndpointProperty {address = Prelude.pure newValue, ..}