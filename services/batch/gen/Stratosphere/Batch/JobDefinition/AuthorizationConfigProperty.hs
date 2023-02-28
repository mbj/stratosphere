module Stratosphere.Batch.JobDefinition.AuthorizationConfigProperty (
        AuthorizationConfigProperty(..), mkAuthorizationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthorizationConfigProperty
  = AuthorizationConfigProperty {accessPointId :: (Prelude.Maybe (Value Prelude.Text)),
                                 iam :: (Prelude.Maybe (Value Prelude.Text))}
mkAuthorizationConfigProperty :: AuthorizationConfigProperty
mkAuthorizationConfigProperty
  = AuthorizationConfigProperty
      {accessPointId = Prelude.Nothing, iam = Prelude.Nothing}
instance ToResourceProperties AuthorizationConfigProperty where
  toResourceProperties AuthorizationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.AuthorizationConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessPointId" Prelude.<$> accessPointId,
                            (JSON..=) "Iam" Prelude.<$> iam])}
instance JSON.ToJSON AuthorizationConfigProperty where
  toJSON AuthorizationConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessPointId" Prelude.<$> accessPointId,
               (JSON..=) "Iam" Prelude.<$> iam]))
instance Property "AccessPointId" AuthorizationConfigProperty where
  type PropertyType "AccessPointId" AuthorizationConfigProperty = Value Prelude.Text
  set newValue AuthorizationConfigProperty {..}
    = AuthorizationConfigProperty
        {accessPointId = Prelude.pure newValue, ..}
instance Property "Iam" AuthorizationConfigProperty where
  type PropertyType "Iam" AuthorizationConfigProperty = Value Prelude.Text
  set newValue AuthorizationConfigProperty {..}
    = AuthorizationConfigProperty {iam = Prelude.pure newValue, ..}