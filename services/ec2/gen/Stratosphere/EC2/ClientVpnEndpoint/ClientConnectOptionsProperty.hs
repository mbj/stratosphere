module Stratosphere.EC2.ClientVpnEndpoint.ClientConnectOptionsProperty (
        ClientConnectOptionsProperty(..), mkClientConnectOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClientConnectOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientconnectoptions.html>
    ClientConnectOptionsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientconnectoptions.html#cfn-ec2-clientvpnendpoint-clientconnectoptions-enabled>
                                  enabled :: (Value Prelude.Bool),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-clientvpnendpoint-clientconnectoptions.html#cfn-ec2-clientvpnendpoint-clientconnectoptions-lambdafunctionarn>
                                  lambdaFunctionArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClientConnectOptionsProperty ::
  Value Prelude.Bool -> ClientConnectOptionsProperty
mkClientConnectOptionsProperty enabled
  = ClientConnectOptionsProperty
      {haddock_workaround_ = (), enabled = enabled,
       lambdaFunctionArn = Prelude.Nothing}
instance ToResourceProperties ClientConnectOptionsProperty where
  toResourceProperties ClientConnectOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::ClientVpnEndpoint.ClientConnectOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "LambdaFunctionArn" Prelude.<$> lambdaFunctionArn]))}
instance JSON.ToJSON ClientConnectOptionsProperty where
  toJSON ClientConnectOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "LambdaFunctionArn" Prelude.<$> lambdaFunctionArn])))
instance Property "Enabled" ClientConnectOptionsProperty where
  type PropertyType "Enabled" ClientConnectOptionsProperty = Value Prelude.Bool
  set newValue ClientConnectOptionsProperty {..}
    = ClientConnectOptionsProperty {enabled = newValue, ..}
instance Property "LambdaFunctionArn" ClientConnectOptionsProperty where
  type PropertyType "LambdaFunctionArn" ClientConnectOptionsProperty = Value Prelude.Text
  set newValue ClientConnectOptionsProperty {..}
    = ClientConnectOptionsProperty
        {lambdaFunctionArn = Prelude.pure newValue, ..}