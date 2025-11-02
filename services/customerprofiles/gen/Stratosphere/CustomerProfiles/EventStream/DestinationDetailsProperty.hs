module Stratosphere.CustomerProfiles.EventStream.DestinationDetailsProperty (
        DestinationDetailsProperty(..), mkDestinationDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DestinationDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-eventstream-destinationdetails.html>
    DestinationDetailsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-eventstream-destinationdetails.html#cfn-customerprofiles-eventstream-destinationdetails-status>
                                status :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-eventstream-destinationdetails.html#cfn-customerprofiles-eventstream-destinationdetails-uri>
                                uri :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDestinationDetailsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> DestinationDetailsProperty
mkDestinationDetailsProperty status uri
  = DestinationDetailsProperty
      {haddock_workaround_ = (), status = status, uri = uri}
instance ToResourceProperties DestinationDetailsProperty where
  toResourceProperties DestinationDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::EventStream.DestinationDetails",
         supportsTags = Prelude.False,
         properties = ["Status" JSON..= status, "Uri" JSON..= uri]}
instance JSON.ToJSON DestinationDetailsProperty where
  toJSON DestinationDetailsProperty {..}
    = JSON.object ["Status" JSON..= status, "Uri" JSON..= uri]
instance Property "Status" DestinationDetailsProperty where
  type PropertyType "Status" DestinationDetailsProperty = Value Prelude.Text
  set newValue DestinationDetailsProperty {..}
    = DestinationDetailsProperty {status = newValue, ..}
instance Property "Uri" DestinationDetailsProperty where
  type PropertyType "Uri" DestinationDetailsProperty = Value Prelude.Text
  set newValue DestinationDetailsProperty {..}
    = DestinationDetailsProperty {uri = newValue, ..}