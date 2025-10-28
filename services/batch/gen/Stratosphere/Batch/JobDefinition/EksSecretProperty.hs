module Stratosphere.Batch.JobDefinition.EksSecretProperty (
        EksSecretProperty(..), mkEksSecretProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EksSecretProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekssecret.html>
    EksSecretProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekssecret.html#cfn-batch-jobdefinition-ekssecret-optional>
                       optional :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ekssecret.html#cfn-batch-jobdefinition-ekssecret-secretname>
                       secretName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEksSecretProperty :: Value Prelude.Text -> EksSecretProperty
mkEksSecretProperty secretName
  = EksSecretProperty
      {haddock_workaround_ = (), secretName = secretName,
       optional = Prelude.Nothing}
instance ToResourceProperties EksSecretProperty where
  toResourceProperties EksSecretProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EksSecret",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SecretName" JSON..= secretName]
                           (Prelude.catMaybes [(JSON..=) "Optional" Prelude.<$> optional]))}
instance JSON.ToJSON EksSecretProperty where
  toJSON EksSecretProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SecretName" JSON..= secretName]
              (Prelude.catMaybes [(JSON..=) "Optional" Prelude.<$> optional])))
instance Property "Optional" EksSecretProperty where
  type PropertyType "Optional" EksSecretProperty = Value Prelude.Bool
  set newValue EksSecretProperty {..}
    = EksSecretProperty {optional = Prelude.pure newValue, ..}
instance Property "SecretName" EksSecretProperty where
  type PropertyType "SecretName" EksSecretProperty = Value Prelude.Text
  set newValue EksSecretProperty {..}
    = EksSecretProperty {secretName = newValue, ..}