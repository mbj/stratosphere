module Stratosphere.EC2.ClientVpnEndpoint.ClientConnectOptionsProperty (
        ClientConnectOptionsProperty(..), mkClientConnectOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ClientConnectOptionsProperty
  = ClientConnectOptionsProperty {enabled :: (Value Prelude.Bool),
                                  lambdaFunctionArn :: (Prelude.Maybe (Value Prelude.Text))}
mkClientConnectOptionsProperty ::
  Value Prelude.Bool -> ClientConnectOptionsProperty
mkClientConnectOptionsProperty enabled
  = ClientConnectOptionsProperty
      {enabled = enabled, lambdaFunctionArn = Prelude.Nothing}
instance ToResourceProperties ClientConnectOptionsProperty where
  toResourceProperties ClientConnectOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::ClientVpnEndpoint.ClientConnectOptions",
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