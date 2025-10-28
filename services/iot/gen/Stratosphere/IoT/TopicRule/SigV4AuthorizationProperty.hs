module Stratosphere.IoT.TopicRule.SigV4AuthorizationProperty (
        SigV4AuthorizationProperty(..), mkSigV4AuthorizationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SigV4AuthorizationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-sigv4authorization.html>
    SigV4AuthorizationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-sigv4authorization.html#cfn-iot-topicrule-sigv4authorization-rolearn>
                                roleArn :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-sigv4authorization.html#cfn-iot-topicrule-sigv4authorization-servicename>
                                serviceName :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-sigv4authorization.html#cfn-iot-topicrule-sigv4authorization-signingregion>
                                signingRegion :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSigV4AuthorizationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> SigV4AuthorizationProperty
mkSigV4AuthorizationProperty roleArn serviceName signingRegion
  = SigV4AuthorizationProperty
      {haddock_workaround_ = (), roleArn = roleArn,
       serviceName = serviceName, signingRegion = signingRegion}
instance ToResourceProperties SigV4AuthorizationProperty where
  toResourceProperties SigV4AuthorizationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.SigV4Authorization",
         supportsTags = Prelude.False,
         properties = ["RoleArn" JSON..= roleArn,
                       "ServiceName" JSON..= serviceName,
                       "SigningRegion" JSON..= signingRegion]}
instance JSON.ToJSON SigV4AuthorizationProperty where
  toJSON SigV4AuthorizationProperty {..}
    = JSON.object
        ["RoleArn" JSON..= roleArn, "ServiceName" JSON..= serviceName,
         "SigningRegion" JSON..= signingRegion]
instance Property "RoleArn" SigV4AuthorizationProperty where
  type PropertyType "RoleArn" SigV4AuthorizationProperty = Value Prelude.Text
  set newValue SigV4AuthorizationProperty {..}
    = SigV4AuthorizationProperty {roleArn = newValue, ..}
instance Property "ServiceName" SigV4AuthorizationProperty where
  type PropertyType "ServiceName" SigV4AuthorizationProperty = Value Prelude.Text
  set newValue SigV4AuthorizationProperty {..}
    = SigV4AuthorizationProperty {serviceName = newValue, ..}
instance Property "SigningRegion" SigV4AuthorizationProperty where
  type PropertyType "SigningRegion" SigV4AuthorizationProperty = Value Prelude.Text
  set newValue SigV4AuthorizationProperty {..}
    = SigV4AuthorizationProperty {signingRegion = newValue, ..}