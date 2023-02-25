module Stratosphere.EMR.StudioSessionMapping (
        StudioSessionMapping(..), mkStudioSessionMapping
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StudioSessionMapping
  = StudioSessionMapping {identityName :: (Value Prelude.Text),
                          identityType :: (Value Prelude.Text),
                          sessionPolicyArn :: (Value Prelude.Text),
                          studioId :: (Value Prelude.Text)}
mkStudioSessionMapping ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> StudioSessionMapping
mkStudioSessionMapping
  identityName
  identityType
  sessionPolicyArn
  studioId
  = StudioSessionMapping
      {identityName = identityName, identityType = identityType,
       sessionPolicyArn = sessionPolicyArn, studioId = studioId}
instance ToResourceProperties StudioSessionMapping where
  toResourceProperties StudioSessionMapping {..}
    = ResourceProperties
        {awsType = "AWS::EMR::StudioSessionMapping",
         properties = ["IdentityName" JSON..= identityName,
                       "IdentityType" JSON..= identityType,
                       "SessionPolicyArn" JSON..= sessionPolicyArn,
                       "StudioId" JSON..= studioId]}
instance JSON.ToJSON StudioSessionMapping where
  toJSON StudioSessionMapping {..}
    = JSON.object
        ["IdentityName" JSON..= identityName,
         "IdentityType" JSON..= identityType,
         "SessionPolicyArn" JSON..= sessionPolicyArn,
         "StudioId" JSON..= studioId]
instance Property "IdentityName" StudioSessionMapping where
  type PropertyType "IdentityName" StudioSessionMapping = Value Prelude.Text
  set newValue StudioSessionMapping {..}
    = StudioSessionMapping {identityName = newValue, ..}
instance Property "IdentityType" StudioSessionMapping where
  type PropertyType "IdentityType" StudioSessionMapping = Value Prelude.Text
  set newValue StudioSessionMapping {..}
    = StudioSessionMapping {identityType = newValue, ..}
instance Property "SessionPolicyArn" StudioSessionMapping where
  type PropertyType "SessionPolicyArn" StudioSessionMapping = Value Prelude.Text
  set newValue StudioSessionMapping {..}
    = StudioSessionMapping {sessionPolicyArn = newValue, ..}
instance Property "StudioId" StudioSessionMapping where
  type PropertyType "StudioId" StudioSessionMapping = Value Prelude.Text
  set newValue StudioSessionMapping {..}
    = StudioSessionMapping {studioId = newValue, ..}