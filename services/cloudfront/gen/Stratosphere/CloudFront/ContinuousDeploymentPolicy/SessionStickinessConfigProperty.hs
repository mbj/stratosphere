module Stratosphere.CloudFront.ContinuousDeploymentPolicy.SessionStickinessConfigProperty (
        SessionStickinessConfigProperty(..),
        mkSessionStickinessConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SessionStickinessConfigProperty
  = SessionStickinessConfigProperty {idleTTL :: (Value Prelude.Integer),
                                     maximumTTL :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSessionStickinessConfigProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> SessionStickinessConfigProperty
mkSessionStickinessConfigProperty idleTTL maximumTTL
  = SessionStickinessConfigProperty
      {idleTTL = idleTTL, maximumTTL = maximumTTL}
instance ToResourceProperties SessionStickinessConfigProperty where
  toResourceProperties SessionStickinessConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::ContinuousDeploymentPolicy.SessionStickinessConfig",
         supportsTags = Prelude.False,
         properties = ["IdleTTL" JSON..= idleTTL,
                       "MaximumTTL" JSON..= maximumTTL]}
instance JSON.ToJSON SessionStickinessConfigProperty where
  toJSON SessionStickinessConfigProperty {..}
    = JSON.object
        ["IdleTTL" JSON..= idleTTL, "MaximumTTL" JSON..= maximumTTL]
instance Property "IdleTTL" SessionStickinessConfigProperty where
  type PropertyType "IdleTTL" SessionStickinessConfigProperty = Value Prelude.Integer
  set newValue SessionStickinessConfigProperty {..}
    = SessionStickinessConfigProperty {idleTTL = newValue, ..}
instance Property "MaximumTTL" SessionStickinessConfigProperty where
  type PropertyType "MaximumTTL" SessionStickinessConfigProperty = Value Prelude.Integer
  set newValue SessionStickinessConfigProperty {..}
    = SessionStickinessConfigProperty {maximumTTL = newValue, ..}