module Stratosphere.Cognito.IdentityPool.CognitoStreamsProperty (
        CognitoStreamsProperty(..), mkCognitoStreamsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CognitoStreamsProperty
  = CognitoStreamsProperty {roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                            streamName :: (Prelude.Maybe (Value Prelude.Text)),
                            streamingStatus :: (Prelude.Maybe (Value Prelude.Text))}
mkCognitoStreamsProperty :: CognitoStreamsProperty
mkCognitoStreamsProperty
  = CognitoStreamsProperty
      {roleArn = Prelude.Nothing, streamName = Prelude.Nothing,
       streamingStatus = Prelude.Nothing}
instance ToResourceProperties CognitoStreamsProperty where
  toResourceProperties CognitoStreamsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::IdentityPool.CognitoStreams",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RoleArn" Prelude.<$> roleArn,
                            (JSON..=) "StreamName" Prelude.<$> streamName,
                            (JSON..=) "StreamingStatus" Prelude.<$> streamingStatus])}
instance JSON.ToJSON CognitoStreamsProperty where
  toJSON CognitoStreamsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RoleArn" Prelude.<$> roleArn,
               (JSON..=) "StreamName" Prelude.<$> streamName,
               (JSON..=) "StreamingStatus" Prelude.<$> streamingStatus]))
instance Property "RoleArn" CognitoStreamsProperty where
  type PropertyType "RoleArn" CognitoStreamsProperty = Value Prelude.Text
  set newValue CognitoStreamsProperty {..}
    = CognitoStreamsProperty {roleArn = Prelude.pure newValue, ..}
instance Property "StreamName" CognitoStreamsProperty where
  type PropertyType "StreamName" CognitoStreamsProperty = Value Prelude.Text
  set newValue CognitoStreamsProperty {..}
    = CognitoStreamsProperty {streamName = Prelude.pure newValue, ..}
instance Property "StreamingStatus" CognitoStreamsProperty where
  type PropertyType "StreamingStatus" CognitoStreamsProperty = Value Prelude.Text
  set newValue CognitoStreamsProperty {..}
    = CognitoStreamsProperty
        {streamingStatus = Prelude.pure newValue, ..}