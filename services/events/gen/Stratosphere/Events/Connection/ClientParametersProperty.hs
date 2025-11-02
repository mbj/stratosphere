module Stratosphere.Events.Connection.ClientParametersProperty (
        ClientParametersProperty(..), mkClientParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClientParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-clientparameters.html>
    ClientParametersProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-clientparameters.html#cfn-events-connection-clientparameters-clientid>
                              clientID :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-connection-clientparameters.html#cfn-events-connection-clientparameters-clientsecret>
                              clientSecret :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClientParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ClientParametersProperty
mkClientParametersProperty clientID clientSecret
  = ClientParametersProperty
      {haddock_workaround_ = (), clientID = clientID,
       clientSecret = clientSecret}
instance ToResourceProperties ClientParametersProperty where
  toResourceProperties ClientParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Connection.ClientParameters",
         supportsTags = Prelude.False,
         properties = ["ClientID" JSON..= clientID,
                       "ClientSecret" JSON..= clientSecret]}
instance JSON.ToJSON ClientParametersProperty where
  toJSON ClientParametersProperty {..}
    = JSON.object
        ["ClientID" JSON..= clientID, "ClientSecret" JSON..= clientSecret]
instance Property "ClientID" ClientParametersProperty where
  type PropertyType "ClientID" ClientParametersProperty = Value Prelude.Text
  set newValue ClientParametersProperty {..}
    = ClientParametersProperty {clientID = newValue, ..}
instance Property "ClientSecret" ClientParametersProperty where
  type PropertyType "ClientSecret" ClientParametersProperty = Value Prelude.Text
  set newValue ClientParametersProperty {..}
    = ClientParametersProperty {clientSecret = newValue, ..}