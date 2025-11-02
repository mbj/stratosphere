module Stratosphere.PCAConnectorSCEP.Challenge (
        Challenge(..), mkChallenge
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Challenge
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcaconnectorscep-challenge.html>
    Challenge {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcaconnectorscep-challenge.html#cfn-pcaconnectorscep-challenge-connectorarn>
               connectorArn :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pcaconnectorscep-challenge.html#cfn-pcaconnectorscep-challenge-tags>
               tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChallenge :: Value Prelude.Text -> Challenge
mkChallenge connectorArn
  = Challenge
      {haddock_workaround_ = (), connectorArn = connectorArn,
       tags = Prelude.Nothing}
instance ToResourceProperties Challenge where
  toResourceProperties Challenge {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorSCEP::Challenge",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectorArn" JSON..= connectorArn]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Challenge where
  toJSON Challenge {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectorArn" JSON..= connectorArn]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ConnectorArn" Challenge where
  type PropertyType "ConnectorArn" Challenge = Value Prelude.Text
  set newValue Challenge {..}
    = Challenge {connectorArn = newValue, ..}
instance Property "Tags" Challenge where
  type PropertyType "Tags" Challenge = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Challenge {..}
    = Challenge {tags = Prelude.pure newValue, ..}