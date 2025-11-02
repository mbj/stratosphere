module Stratosphere.RDS.GlobalCluster.GlobalEndpointProperty (
        GlobalEndpointProperty(..), mkGlobalEndpointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlobalEndpointProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-globalcluster-globalendpoint.html>
    GlobalEndpointProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-globalcluster-globalendpoint.html#cfn-rds-globalcluster-globalendpoint-address>
                            address :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlobalEndpointProperty :: GlobalEndpointProperty
mkGlobalEndpointProperty
  = GlobalEndpointProperty
      {haddock_workaround_ = (), address = Prelude.Nothing}
instance ToResourceProperties GlobalEndpointProperty where
  toResourceProperties GlobalEndpointProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::GlobalCluster.GlobalEndpoint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Address" Prelude.<$> address])}
instance JSON.ToJSON GlobalEndpointProperty where
  toJSON GlobalEndpointProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Address" Prelude.<$> address]))
instance Property "Address" GlobalEndpointProperty where
  type PropertyType "Address" GlobalEndpointProperty = Value Prelude.Text
  set newValue GlobalEndpointProperty {..}
    = GlobalEndpointProperty {address = Prelude.pure newValue, ..}