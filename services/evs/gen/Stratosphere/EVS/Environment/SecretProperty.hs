module Stratosphere.EVS.Environment.SecretProperty (
        SecretProperty(..), mkSecretProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecretProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-secret.html>
    SecretProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evs-environment-secret.html#cfn-evs-environment-secret-secretarn>
                    secretArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecretProperty :: SecretProperty
mkSecretProperty
  = SecretProperty
      {haddock_workaround_ = (), secretArn = Prelude.Nothing}
instance ToResourceProperties SecretProperty where
  toResourceProperties SecretProperty {..}
    = ResourceProperties
        {awsType = "AWS::EVS::Environment.Secret",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "SecretArn" Prelude.<$> secretArn])}
instance JSON.ToJSON SecretProperty where
  toJSON SecretProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "SecretArn" Prelude.<$> secretArn]))
instance Property "SecretArn" SecretProperty where
  type PropertyType "SecretArn" SecretProperty = Value Prelude.Text
  set newValue SecretProperty {..}
    = SecretProperty {secretArn = Prelude.pure newValue, ..}