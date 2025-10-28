module Stratosphere.Cognito.IdentityPool.PushSyncProperty (
        PushSyncProperty(..), mkPushSyncProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PushSyncProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-pushsync.html>
    PushSyncProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-pushsync.html#cfn-cognito-identitypool-pushsync-applicationarns>
                      applicationArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypool-pushsync.html#cfn-cognito-identitypool-pushsync-rolearn>
                      roleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPushSyncProperty :: PushSyncProperty
mkPushSyncProperty
  = PushSyncProperty
      {haddock_workaround_ = (), applicationArns = Prelude.Nothing,
       roleArn = Prelude.Nothing}
instance ToResourceProperties PushSyncProperty where
  toResourceProperties PushSyncProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::IdentityPool.PushSync",
         supportsTags = Prelude.False,
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