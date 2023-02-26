module Stratosphere.Cognito.IdentityPool.PushSyncProperty (
        PushSyncProperty(..), mkPushSyncProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PushSyncProperty
  = PushSyncProperty {applicationArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                      roleArn :: (Prelude.Maybe (Value Prelude.Text))}
mkPushSyncProperty :: PushSyncProperty
mkPushSyncProperty
  = PushSyncProperty
      {applicationArns = Prelude.Nothing, roleArn = Prelude.Nothing}
instance ToResourceProperties PushSyncProperty where
  toResourceProperties PushSyncProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::IdentityPool.PushSync",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApplicationArns" Prelude.<$> applicationArns,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn])}
instance JSON.ToJSON PushSyncProperty where
  toJSON PushSyncProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApplicationArns" Prelude.<$> applicationArns,
               (JSON..=) "RoleArn" Prelude.<$> roleArn]))
instance Property "ApplicationArns" PushSyncProperty where
  type PropertyType "ApplicationArns" PushSyncProperty = ValueList Prelude.Text
  set newValue PushSyncProperty {..}
    = PushSyncProperty {applicationArns = Prelude.pure newValue, ..}
instance Property "RoleArn" PushSyncProperty where
  type PropertyType "RoleArn" PushSyncProperty = Value Prelude.Text
  set newValue PushSyncProperty {..}
    = PushSyncProperty {roleArn = Prelude.pure newValue, ..}