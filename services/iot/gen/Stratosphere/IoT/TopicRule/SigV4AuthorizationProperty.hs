module Stratosphere.IoT.TopicRule.SigV4AuthorizationProperty (
        SigV4AuthorizationProperty(..), mkSigV4AuthorizationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SigV4AuthorizationProperty
  = SigV4AuthorizationProperty {roleArn :: (Value Prelude.Text),
                                serviceName :: (Value Prelude.Text),
                                signingRegion :: (Value Prelude.Text)}
mkSigV4AuthorizationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> SigV4AuthorizationProperty
mkSigV4AuthorizationProperty roleArn serviceName signingRegion
  = SigV4AuthorizationProperty
      {roleArn = roleArn, serviceName = serviceName,
       signingRegion = signingRegion}
instance ToResourceProperties SigV4AuthorizationProperty where
  toResourceProperties SigV4AuthorizationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.SigV4Authorization",
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